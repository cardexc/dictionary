import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:hive/hive.dart';

part 'settings_model.g.dart';

@HiveType(typeId: 0)
class SettingsModel extends HiveObject {
  @HiveField(0, defaultValue: "uaPl")
  String? defaultLanguageDirection;

  @HiveField(1, defaultValue: true)
  bool? askLanguageDirection;

  @HiveField(2, defaultValue: true)
  bool? useSentenceInExercises;

  @HiveField(3, defaultValue: true)
  bool? exerciseFlashcardDefaultUse;

  @HiveField(4, defaultValue: true)
  bool? exerciseScratchCardsDefaultUse;

  @HiveField(5, defaultValue: true)
  bool? exerciseMultipleChoiceDefaultUse;

  @HiveField(6, defaultValue: true)
  bool? exerciseMatchMakerDefaultUse;

  @HiveField(7, defaultValue: true)
  bool? exerciseAlphabetSoupDefaultUse;

  @HiveField(8, defaultValue: true)
  bool? exerciseWritingDefaultUse;

  @HiveField(9, defaultValue: true)
  bool? exerciseListenTypeDefaultUse;
}
