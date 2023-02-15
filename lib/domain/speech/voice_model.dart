import 'package:freezed_annotation/freezed_annotation.dart';

part "voice_model.freezed.dart";

@freezed
abstract class VoiceModel with _$VoiceModel {
  VoiceModel._();

  factory VoiceModel({
    required String name,
    required String gender,
    required List<String> languageCodes,
  }) = _VoiceModel;

  static List<VoiceModel> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList.map((v) {
      return VoiceModel(name: v['name'], gender: v['ssmlGender'], languageCodes: List<String>.from(v['languageCodes']));
    }).toList();
  }
}
