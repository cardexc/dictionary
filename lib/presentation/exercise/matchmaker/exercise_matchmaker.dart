import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/matchmaker/exercise_matchmaker_bloc.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/word/word_model.dart';
import '../../../../infrastructure/config/app_colors.dart';
import '../../../application/exercise/form/exercise_form_bloc.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import 'exercise_matchmaker_finish.dart';

class ExerciseMatchmaker extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;

  const ExerciseMatchmaker({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseMatchmakerBloc>(
      create: (context) => ExerciseMatchmakerBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: languageDirection,
        initialWords: words,
      ),
      child: _ExerciseMatchmakerBody(),
    );
  }
}

class _ExerciseMatchmakerBody extends StatelessWidget {
  final rowHeight = 75.0;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ExerciseMatchmakerBloc, ExerciseMatchmakerState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished ? const ExerciseMatchMakerFinish() : _buildExercise(context);
      },
    );
  }

  Widget _buildExercise(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: BlocBuilder<ExerciseMatchmakerBloc, ExerciseMatchmakerState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: mediumPadding, vertical: largePadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ...state.collectionToDisplayPair.first.map(
                              (wordModel) => _buildContainer(context, wordModel, 0, state),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            ...state.collectionToDisplayPair.second.map(
                              (wordModel) => _buildContainer(context, wordModel, 1, state),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          BlocSelector<ExerciseMatchmakerBloc, ExerciseMatchmakerState, bool>(
            selector: (state) {
              return state.showNextButton;
            },
            builder: (context, showNextButton) {
              return AnimatedOpacity(
                duration: animationDuration,
                opacity: showNextButton ? 1 : 0,
                child: YellowElevatedButton(
                    titleRes: "next",
                    onPressed: () {
                      if (showNextButton) {
                        context.read<ExerciseMatchmakerBloc>().add(const ExerciseMatchmakerEvent.nextWord());
                      }
                    }),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(BuildContext context, WordModel wordModel, int column, ExerciseMatchmakerState state) {
    Color borderHighlightColor = Colors.transparent;
    if (state.wordChosenFirst != null &&
        state.wordChosenSecond == null &&
        (column == state.firstWordColumn || column == state.secondWordColumn) &&
        wordModel == state.wordChosenFirst) {
      borderHighlightColor = Exercises.exerciseSuccessColor;
    }

    Color highlightColor = Colors.transparent;
    if (state.wordChosenFirst != null &&
        state.wordChosenSecond != null &&
        (wordModel == state.wordChosenFirst && column == state.firstWordColumn ||
            wordModel == state.wordChosenSecond && column == state.secondWordColumn)) {
      highlightColor = state.highlightColor ?? Colors.transparent;
    }

    if (state.matchedWords.contains(wordModel)) {
      highlightColor = AppColors.grey400;
    }
    return Card(
      key: ValueKey(wordModel.id),
      child: AnimatedContainer(
        height: rowHeight,
        duration: animationDuration,
        decoration: BoxDecoration(
          color: highlightColor,
          border: Border.all(color: borderHighlightColor, width: 5),
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          onTap: () {
            var enabled = true;

            if (state.firstWordColumn != null && state.secondWordColumn == null && state.firstWordColumn == column) {
              enabled = false;
            }

            if (enabled && !state.matchedWords.contains(wordModel)) {
              context.read<ExerciseMatchmakerBloc>().add(OptionChosen(wordModel, column));
            }
          },
          child: Center(
            child: AutoSizeText(
              wordModel.getStringAccordingToLanguageDirection(state.languageDirection, column),
              style: Exercises.exerciseMatchmakerItemsTextStyle,
              textAlign: TextAlign.center,
              maxLines: 5,
            ),
          ),
        ),
      ),
    );
  }
}
