import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

const extraSmallPadding = 4.0;
const smallPadding = 8.0;
const mediumPadding = 16.0;
const largePadding = 24.0;

const defaultDatePattern = "dd.MM.yyyy";

const defaultVoiceIndex = 0;

const ukLocale = Locale('uk');

class Exercises {
  static const langImageSize = 35.0;
  static double wordFontSize = 22.0;
  static double letterContainerWidth = 70.0;

  static TextStyle exerciseAlphabetSoupCharacterTextStyle = exerciseCardItemsTextStyle.copyWith(fontWeight: FontWeight.w300);

  static TextStyle exerciseConstructedWordTextStyle = exerciseCardItemsTextStyle.copyWith(fontWeight: FontWeight.w300, fontSize: 22);

  static const TextStyle exerciseCardItemsTextStyle = TextStyle(fontWeight: FontWeight.w300, fontSize: 19.0);

  static const TextStyle exerciseMultipleChoiceItemsTextStyle = exerciseCardItemsTextStyle;

  static const TextStyle exerciseMatchmakerItemsTextStyle = exerciseCardItemsTextStyle;

  static Color exerciseErrorColor = Colors.red[200]!;

  static Color exerciseSuccessColor = AppColors.appYellow;

  static const exerciseMatchmakerRowsCount = 5;
}

const animationDuration = Duration(milliseconds: 250);

const predefinedBackgroundButtonGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [AppColors.appYellow, AppColors.isAboutToBeExpiredColor],
);

const progressIndicatorGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    AppColors.appYellow,
    AppColors.isAboutToBeExpiredColor,
    AppColors.appYellow,
  ],
);

const progressIndicatorGradient3 = LinearGradient(
  colors: [
    AppColors.exerciseProgressColor2,
    AppColors.exerciseProgressColor2,
    AppColors.appYellow,
    AppColors.appYellow,
    AppColors.isAboutToBeExpiredColor,
    AppColors.isAboutToBeExpiredColor,
  ],
);

const exerciseFinishTextGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    AppColors.primaryOld,
    AppColors.isAboutToBeExpiredColor,
    AppColors.appYellow2,
    AppColors.primaryOld,
    AppColors.isAboutToBeExpiredColor,
  ],
);

class HiveConst {
  static String boxName = "settings";
  static String defaultLanguageDirectionValue = "uaPl";
  static String defaultLanguageDirectionKey = "defaultLanguageDirection";
  static String askLanguageDirectionKey = "askLanguageDirection";
  static String useSentenceInExercisesKey = "useSentenceInExercises";
  static String exerciseFlashcardDefaultUseKey = "exerciseFlashcardDefaultUse";
  static String exerciseScratchCardsDefaultUseKey = "exerciseScratchCardsDefaultUse";
  static String exerciseMultipleChoiceDefaultUseKey = "exerciseMultipleChoiceDefaultUse";
  static String exerciseMatchMakerDefaultUseKey = "exerciseMatchMakerDefaultUse";
  static String exerciseAlphabetSoupDefaultUseKey = "exerciseAlphabetSoupDefaultUse";
  static String exerciseWritingDefaultUseKey = "exerciseWritingDefaultUse";
  static String exerciseListenTypeDefaultUseKey = "exerciseListenTypeDefaultUse";

  static bool askLanguageDirectionDefaultValue = true;
  static bool useSentenceInExercisesDefaultValue = true;

  static bool exerciseFlashcardDefaultUseDefaultValue = true;
  static bool exerciseScratchCardsDefaultUseDefaultValue = false;
  static bool exerciseMultipleChoiceDefaultUseDefaultValue = true;
  static bool exerciseMatchMakerDefaultUseDefaultValue = true;
  static bool exerciseAlphabetSoupDefaultUseDefaultValue = true;
  static bool exerciseWritingDefaultUseDefaultValue = true;
  static bool exerciseListenTypeDefaultUseDefaultValue = true;
}
