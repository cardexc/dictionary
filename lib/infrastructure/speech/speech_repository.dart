import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:dictionary/domain/error/error_model.dart';
import 'package:dictionary/domain/speech/voice_model.dart';
import 'package:dictionary/infrastructure/helpers/text_to_speech/text_to_speech_api.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/speech/i_speech_repository.dart';
import '../../domain/speech/voice_model.dart';

@LazySingleton(as: ISpeechRepository)
class SpeechRepositoryImpl extends ISpeechRepository {
  final TextToSpeechAPI _api;

  SpeechRepositoryImpl(this._api);

  List<VoiceModel> voices = [
    VoiceModel(name: "pl-PL-Standard-A", gender: "FEMALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Standard-B", gender: "MALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Standard-C", gender: "MALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Standard-E", gender: "FEMALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Standard-D", gender: "FEMALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Wavenet-A", gender: "FEMALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Wavenet-B", gender: "MALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Wavenet-C", gender: "MALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Wavenet-E", gender: "FEMALE", languageCodes: ["pl-PL"]),
    VoiceModel(name: "pl-PL-Wavenet-D", gender: "FEMALE", languageCodes: ["pl-PL"]),
  ];

  @override
  Future<Either<ServerFailureException, String>> getSpeechFilePath(String text, String voice, String lCode) async {
    var audioContentEither = await _api.synthesizeText(text, voice, lCode);

    return audioContentEither.fold((failure) => Left(failure), (audioContent) async {
      final bytes = const Base64Decoder().convert(audioContent, 0, audioContent.length);

      final dir = await getTemporaryDirectory();

      final file = File('${dir.path}/wordoutloud.mp3');

      await file.writeAsBytes(bytes);

      return Right(file.path);
    });
  }

  @override
  Future<List<VoiceModel>> fetchVoices() async {
    var voiceResponse = await _api.getVoices();
    return voiceResponse.fold((l) => [], (r) {

      /*var f = r.where((VoiceModel e) => e.name.contains("pl-")).toList();*/

      if (kDebugMode) {
        print(r);
      }
      return r;
    });
  }

  @override
  void init() async {
    if (voices.isEmpty) {
      voices = await fetchVoices();
    }
  }

  @override
  List<VoiceModel> getVoices() {
    return voices;
  }
}
