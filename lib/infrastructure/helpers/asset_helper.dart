import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:injectable/injectable.dart';

@lazySingleton
class AssetHelper {
  late String textToSpeechGoogleApiKey;

  AssetHelper() {
    init();
  }

  Future<String> init() async {
    textToSpeechGoogleApiKey = await loadAsset();
    return textToSpeechGoogleApiKey;
  }

  Future<String> loadAsset() async{
    var assetJson = await rootBundle.loadString('assets/secrets/speech_api_key.json');
    var decoded = jsonDecode(assetJson);
    return Future.value(decoded["key"]);
  }
}
