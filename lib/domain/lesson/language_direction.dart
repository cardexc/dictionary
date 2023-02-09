import 'package:dictionary/domain/languages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "language_direction.freezed.dart";

@freezed
abstract class LanguageDirection with _$LanguageDirection {
  LanguageDirection._();

  factory LanguageDirection({
    required String firstAsset,
    required String secondAsset,
    required Languages languageFrom,
    required Languages languageTo,
  }) = _LanguageDirection;

  factory LanguageDirection.plToUa() => LanguageDirection(
        firstAsset: "assets/flags/poland.png",
        secondAsset: "assets/flags/ukraine.png",
        languageFrom: Languages.pl,
        languageTo: Languages.uk,
      );

  factory LanguageDirection.uaToPl() => LanguageDirection(
        firstAsset: "assets/flags/ukraine.png",
        secondAsset: "assets/flags/poland.png",
        languageFrom: Languages.uk,
        languageTo: Languages.pl,
      );

  factory LanguageDirection.plToRu() => LanguageDirection(
        firstAsset: "assets/flags/poland.png",
        secondAsset: "",
        languageFrom: Languages.pl,
        languageTo: Languages.ru,
      );

  factory LanguageDirection.ruToPl() => LanguageDirection(
        firstAsset: "",
        secondAsset: "assets/flags/poland.png",
        languageFrom: Languages.ru,
        languageTo: Languages.pl,
      );

  bool isRu(int position) => (position == 0 && languageFrom == Languages.ru) || (position == 1 && languageTo == Languages.ru);
}
