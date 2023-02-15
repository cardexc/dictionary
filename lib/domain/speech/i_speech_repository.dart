import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/error/error_model.dart';
import 'package:dictionary/domain/speech/voice_model.dart';

abstract class ISpeechRepository {
  void init();

  Future<Either<ServerFailureException, String>> getSpeechFilePath(String text, String voice, String lCode);

  Future<List<VoiceModel>> fetchVoices();

  List<VoiceModel> getVoices();
}
