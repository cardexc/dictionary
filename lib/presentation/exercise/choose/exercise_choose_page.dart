import 'package:dictionary/application/exercise/choose/exercise_choose_bloc.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/infrastructure/config/app_colors.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/infrastructure/config/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import '../../../domain/exercise/exercise_model.dart';
import '../../../domain/words/word_model.dart';
import '../../../main.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import '../../widgets/scaffold_gradient.dart';
import '../../widgets/widgets.dart';

class ExerciseChoosePage extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;
  final List<ExerciseModel> exercises = [
    ExerciseModel.flashcards(title: "flash_cards".tr()),
    ExerciseModel.scratchcards(title: "scratch_cards".tr()),
    ExerciseModel.multipleChoice(title: "multiple_choice".tr()),
    ExerciseModel.matchMaker(title: "matchmaker".tr()),
    ExerciseModel.alphabetSoup(title: "alphabetSoup".tr()),
    ExerciseModel.listenType(title: "listenType".tr()),
    ExerciseModel.writing(title: "writing".tr()),
  ];

  ExerciseChoosePage({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("choose_exercises").tr(),
      ),
      child: ScaffoldGradient(
        child: BlocProvider<ExerciseChooseBloc>(
          create: (context) => ExerciseChooseBloc(
            words: words,
            languageDirection: languageDirection,
            exercises: exercises,
            box: Hive.box(HiveConst.boxName),
          ),
          child: _LanguageDirectionChoosePageBody(),
        ),
      ),
    );
  }
}

class _LanguageDirectionChoosePageBody extends StatelessWidget {
  _LanguageDirectionChoosePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseChooseBloc, ExerciseChooseState>(
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: smallPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: mediumPadding,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: _buildTopCard(context),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: _buildSecondCard(context),
                  ),
                ],
              ),
            ),
            YellowElevatedButton(
                titleRes: "begin_training",
                onPressed: () {
                  var bloc = context.read<ExerciseChooseBloc>();
                  var exercises = bloc.exercises.where((element) => state.exercisesStates[element.type] == true).toList();

                  if (exercises.isEmpty) {
                    return;
                  }

                  context.pushNamed(exerciseFormPage, extra: {
                    "languageDirection": bloc.languageDirection,
                    "words": bloc.words,
                    "exercises": exercises,
                  });
                }),
          ],
        );
      },
    );
  }

  Card _buildTopCard(BuildContext context) {
    return Card(
      elevation: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: mediumPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
            child: const Text(
              "memorise",
              style: TextStyle(fontWeight: FontWeight.w700),
            ).tr(),
          ),
          const SizedBox(
            height: smallPadding / 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
            child: const Text(
              "memorise_description",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            ).tr(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: mediumPadding),
            child: Divider(
              color: AppColors.appGrey,
            ),
          ),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[0]),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[1]),
        ],
      ),
    );
  }

  Card _buildSecondCard(BuildContext context) {
    return Card(
      elevation: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: mediumPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
            child: const Text(
              "train",
              style: TextStyle(fontWeight: FontWeight.w700),
            ).tr(),
          ),
          const SizedBox(
            height: smallPadding / 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
            child: const Text(
              "train_your_knowledge",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            ).tr(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: mediumPadding),
            child: Divider(
              color: AppColors.appGrey,
            ),
          ),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[2]),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[3]),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[4]),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[5]),
          _ExerciseRow(exerciseModel: context.read<ExerciseChooseBloc>().exercises[6]),
        ],
      ),
    );
  }
}

class _ExerciseRow extends StatelessWidget {
  final ExerciseModel exerciseModel;
  final height = 55.0;

  const _ExerciseRow({
    Key? key,
    required this.exerciseModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseChooseBloc, ExerciseChooseState>(
      builder: (context, state) {
        var boolState = state.exercisesStates[exerciseModel.type] ?? false;

        return AnimatedContainer(
          height: height,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            gradient: boolState
                ? LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: const [0.2, 0.4, 0.5, 0.9],
                    colors: [
                      Colors.yellow[100]!,
                      Colors.yellow[200]!,
                      Colors.yellow[100]!,
                      Colors.white,
                    ],
                  )
                : null,
          ),
          child: InkWell(
            onTap: () {
              context.read<ExerciseChooseBloc>().add(ExerciseChosen(exerciseModel.type, !boolState));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
              child: Row(
                children: [
                  Icon(
                    exerciseModel.iconData,
                    color: AppColors.appBlack,
                  ),
                  const SizedBox(
                    width: mediumPadding,
                  ),
                  Text(
                    exerciseModel.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Expanded(child: Container()),
                  Icon(CupertinoIcons.check_mark_circled, color: boolState ? AppColors.appYellow2 : Colors.grey[400]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
