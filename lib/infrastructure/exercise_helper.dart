import 'dart:math';

import 'package:dictionary/domain/exercise/exercise_types.dart';
import 'package:easy_localization/easy_localization.dart';

class ExerciseHelper {
  static String getMotivationSuggestionForUser(ExerciseType type, double percent) {
    if (type == ExerciseType.flashcards || type == ExerciseType.scratchcards) {
      return "motivation_suggestion_${Random().nextInt(10)}".tr(); // from 0 to 10
    } else if (percent <= 0.15) {
      return "motivation_suggestion_15_${Random().nextInt(4)}".tr(); // 0 to 4

    } else if (percent <= 0.35) {
      return "motivation_suggestion_35_${Random().nextInt(4)}".tr(); // 0 to 4

    } else if (percent <= 0.55) {
      return "motivation_suggestion_55_${Random().nextInt(4)}".tr(); // 0 to 4

    } else if (percent <= 0.85) {
      return "motivation_suggestion_85_${Random().nextInt(4)}".tr(); // 0 to 4

    } else {
      return "motivation_suggestion_100_${Random().nextInt(4)}".tr(); // 0 to 4
    }
  }
}
