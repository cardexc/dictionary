import 'dart:io';
import 'dart:async';
import 'dart:convert' show json, utf8;

import 'package:dictionary/domain/speech/voice_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/error/error_model.dart';
import '../asset_helper.dart';

@lazySingleton
class TextToSpeechAPI {
  final AssetHelper _assetHelper;

  final _httpClient = HttpClient();

  late String _apiKey;

  static const _apiURL = "texttospeech.googleapis.com";

  TextToSpeechAPI(this._assetHelper) {
    _apiKey = _assetHelper.textToSpeechGoogleApiKey;
  }

  Future<Either<ServerFailureException, String>> synthesizeText(String text, String name, String languageCode) async {
    try {
      final uri = Uri.https(_apiURL, '/v1beta1/text:synthesize');
      final Map json = {
        'input': {'text': text},
        'voice': {'name': name, 'languageCode': languageCode},
        'audioConfig': {'audioEncoding': 'MP3'}
      };

      final jsonResponseEither = await _postJson(uri, json);
      return jsonResponseEither.fold((failure) {
        return Left(failure);
      }, (answer) {
        final String audioContent = answer['audioContent'];
        return Right(audioContent);
      });
    } on Exception catch (e) {
      return const Left(ServerFailureException.unknownError());
    }
  }

  Future<Either<ServerFailureException, Map<String, dynamic>>> _postJson(Uri uri, Map jsonMap) async {
    try {
      final httpRequest = await _httpClient.postUrl(uri);
      final jsonData = utf8.encode(json.encode(jsonMap));
      final jsonResponseEither = await _processRequestIntoJsonResponse(httpRequest, jsonData);
      return jsonResponseEither;
    } on Exception catch (_) {
      return const Left(ServerFailureException.unknownError());
    }
  }

  Future<Either<ServerFailureException, Map<String, dynamic>>> _processRequestIntoJsonResponse(HttpClientRequest httpRequest, List<int>? data) async {
    try {
      httpRequest.headers.add('X-Goog-Api-Key', _apiKey);
      httpRequest.headers.add(HttpHeaders.contentTypeHeader, 'application/json');

      if (data != null) {
        httpRequest.add(data);
      }

      final httpResponse = await httpRequest.close();

      if (httpResponse.statusCode != HttpStatus.ok) {
        return const Left(ServerFailureException.unknownError());
      }

      final responseBody = await httpResponse.transform(utf8.decoder).join();

      return Right(json.decode(responseBody));
    } on Exception catch (e) {
      return const Left(ServerFailureException.badResponse());
    }
  }

  Future<Either<ServerFailureException, List<VoiceModel>>> getVoices() async {
    try {
      final uri = Uri.https(_apiURL, '/v1beta1/voices');

      final jsonResponseEither = await _getJson(uri);

      return jsonResponseEither.fold((failure) => Left(failure), (answer) {
        final List<dynamic> voicesJSON = answer['voices'].toList();

        final voices = VoiceModel.mapJSONStringToList(voicesJSON);

        return Right(voices);
      });
    } on Exception catch (e) {
      return Left(ServerFailureException.unknownError(message: e.toString()));
    }
  }

  Future<Either<ServerFailureException, Map<String, dynamic>>> _getJson(Uri uri) async {
    try {
      final httpRequest = await _httpClient.getUrl(uri);
      var response = await _processRequestIntoJsonResponse(httpRequest, null);
      return (response);
    } on Exception catch (e) {
      return Left(ServerFailureException.unknownError(message: e.toString()));
    }
  }
}
