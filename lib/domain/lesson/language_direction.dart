import 'package:dictionary/domain/languages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "language_direction.freezed.dart";

@freezed
abstract class LanguageDirection with _$LanguageDirection {
  LanguageDirection._();

  factory LanguageDirection({
    required String firstAsset,
    required String secondAsset,
    required String stringDirection,
    required Languages languageFrom,
    required Languages languageTo,
  }) = _LanguageDirection;

  factory LanguageDirection.plToUa() => LanguageDirection(
        firstAsset: "assets/flags/poland.png",
        secondAsset: "assets/flags/ukraine.png",
        languageFrom: Languages.pl,
        languageTo: Languages.ua,
        stringDirection: "plUa",
      );

  factory LanguageDirection.uaToPl() => LanguageDirection(
        firstAsset: "assets/flags/ukraine.png",
        secondAsset: "assets/flags/poland.png",
        languageFrom: Languages.ua,
        languageTo: Languages.pl,
        stringDirection: "uaPl",
      );

  factory LanguageDirection.plToRu() => LanguageDirection(
        firstAsset: "assets/flags/poland.png",
        secondAsset: "",
        languageFrom: Languages.pl,
        languageTo: Languages.ru,
        stringDirection: "plRu",
      );

  factory LanguageDirection.ruToPl() => LanguageDirection(
        firstAsset: "",
        secondAsset: "assets/flags/poland.png",
        languageFrom: Languages.ru,
        languageTo: Languages.pl,
        stringDirection: "ruPl",
      );

  bool isRu(int position) => (position == 0 && languageFrom == Languages.ru) || (position == 1 && languageTo == Languages.ru);

  @override
  String toString() {
    var first = languageFrom.name.substring(0, 1).toUpperCase() + languageFrom.name.substring(1, 2);
    var second = languageTo.name;
    return "$first -> $second";
  }

  static LanguageDirection getFromString(String pattern) {
    switch (pattern) {
      case "plUa":
        return LanguageDirection.plToUa();
      case "uaPl":
        return LanguageDirection.uaToPl();
      case "plRu":
        return LanguageDirection.plToRu();
      case "ruPl":
        return LanguageDirection.ruToPl();
      default:
        return LanguageDirection.uaToPl();
    }
  }
}
