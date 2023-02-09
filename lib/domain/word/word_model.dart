import 'package:dictionary/domain/languages.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part "word_model.freezed.dart";

@freezed
abstract class WordModel with _$WordModel {
  WordModel._();

  factory WordModel({
    required UniqueId id,
    required String uk,
    required String ru,
    required String pl,
    @Default(false) bool selected,
  }) = _WordModel;

  /// 0: get string for the source language, 1 - translation
  String getStringAccordingToLanguageDirection(LanguageDirection languageDirection, int position) {
    if (position == 0) {
      if (languageDirection.languageFrom == Languages.uk) {
        return uk;
      } else if (languageDirection.languageFrom == Languages.pl) {
        return pl;
      } else if (languageDirection.languageFrom == Languages.ru) {
        return "ru - $uk";
      }
    } else if (position == 1) {
      if (languageDirection.languageTo == Languages.uk) {
        return uk;
      } else if (languageDirection.languageTo == Languages.pl) {
        return pl;
      } else if (languageDirection.languageTo == Languages.ru) {
        return "ru - $uk";
      }
    }

    return "";
  }
}
