import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/domain/exercise/exercise_types.dart';
import 'package:dictionary/infrastructure/config/app_colors.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/infrastructure/exercise_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../application/exercise/form/exercise_form_bloc.dart';
import '../widgets/buttons/yellow_elevated_button.dart';

class ExerciseFinishWidget extends StatelessWidget {
  final int totalWords;
  final int wordsToBeRepeated;
  final ExerciseType type;

  const ExerciseFinishWidget({
    required this.totalWords,
    required this.wordsToBeRepeated,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formBloc = context.read<ExerciseFormBloc>();

    var percent = (totalWords - wordsToBeRepeated) / totalWords;

    Color percentColor;
    if (percent < 0.35) {
      percentColor = AppColors.exerciseFinishPercentColor1;
    } else if (percent < 0.7) {
      percentColor = AppColors.exerciseFinishPercentColor2;
    } else {
      percentColor = AppColors.exerciseFinishPercentColor3;
    }

    String motivationString = ExerciseHelper.getMotivationSuggestionForUser(type, percent);

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                motivationString,
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ).tr(),
              largePadding.ph,
              CircularPercentIndicator(
                radius: 101.0,
                lineWidth: 22.0,
                percent: percent,
                backgroundColor: AppColors.appProgressBorder2,
                linearGradient: progressIndicatorGradient3,
                animationDuration: 750,
                animation: true,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(
                  "${((percent * 100).toInt()).toString()}%",
                  style: TextStyle(fontSize: 48, color: percentColor),
                ),
              ),
              (largePadding * 2).ph,
              YellowElevatedButton(
                onPressed: () {
                  context.read<ExerciseFormBloc>().add(const NextExercise());
                },
                titleRes: formBloc.isFinish ? "finish".tr() : "lets_move_on".tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
