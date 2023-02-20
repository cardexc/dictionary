import 'package:dictionary/application/exercise/alphabet_soup/exercise_alphabet_soup_bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/domain/core/value_objects.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/word/word_model.dart';
import '../../../../infrastructure/config/app_colors.dart';
import '../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../domain/exercise/exercise_types.dart';
import '../../../domain/pair.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import '../../widgets/exercise_correct_word_widget.dart';
import '../../widgets/exercise_header_row.dart';
import '../../widgets/widgets.dart';
import '../exercise_finish_widget.dart';

class ExerciseAlphabetSoup extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;

  const ExerciseAlphabetSoup({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseAlphabetSoupBloc>(
      create: (context) => ExerciseAlphabetSoupBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: languageDirection,
        words: words,
      ),
      child: _ExerciseAlphabetSoupBody(),
    );
  }
}

class _ExerciseAlphabetSoupBody extends StatelessWidget {
  final rowHeight = 75.0;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ExerciseAlphabetSoupBloc>();

    return BlocSelector<ExerciseAlphabetSoupBloc, ExerciseAlphabetSoupState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished
            ? ExerciseFinishWidget(
                totalWords: bloc.words.length,
                wordsToBeRepeated: bloc.wordsToBeRepeated.length,
                type: ExerciseType.alphabetSoup,
              )
            : _buildExercise(context);
      },
    );
  }

  Widget _buildExercise(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter,
              child: BlocBuilder<ExerciseAlphabetSoupBloc, ExerciseAlphabetSoupState>(
                builder: (context, state) {
                  var wordPair = state.letters[state.position];
                  var wordModel = wordPair.first;
                  var listOfPairs = wordPair.second;
                  var languageDirection = state.languageDirection;
                  var headerWidgetHeight = 100.0;
                  var tController = TextEditingController()..text = state.constructedWord;

                  BoxDecoration boxDecoration = defaultCupertinoBoxDecoration;

                  if (state.wordFinished && state.wordConstructionError) {
                    boxDecoration = boxDecoration.copyWith(color: Exercises.exerciseErrorColor);
                  } else if (state.wordFinished && !state.wordConstructionError) {
                    boxDecoration = boxDecoration.copyWith(color: Exercises.exerciseSuccessColor);
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                    child: Column(
                      children: [
                        /*Header*/
                        ExerciseHeaderRow(wordModel: wordModel, languageDirection: languageDirection, showSound: state.showNextButton),

                        /*Constructed word*/
                        CupertinoTextField(
                          decoration: boxDecoration,
                          readOnly: true,
                          enableSuggestions: false,
                          controller: tController,
                          padding: const EdgeInsets.all(mediumPadding),
                          style: Exercises.exerciseConstructedWordTextStyle,
                          suffix: IconButton(
                            icon: const Icon(CupertinoIcons.delete_left),
                            onPressed: () {
                              if (state.usedChars.isNotEmpty && !state.wordFinished) {
                                context.read<ExerciseAlphabetSoupBloc>().add(const CharRemoved());
                              }
                            },
                          ),
                          maxLines: 4,
                          minLines: 1,
                        ),

                        /*Space*/
                        if (!(state.wordFinished && state.wordConstructionError)) largePadding.ph,

                        /*Correct word*/
                        if (state.wordFinished && state.wordConstructionError)
                          ExerciseCorrectWordWidget(
                            languageDirection: languageDirection,
                            wordModel: wordModel,
                          ),

                        /*Letters*/
                        if (!state.wordFinished)
                          Wrap(
                            spacing: smallPadding,
                            runSpacing: smallPadding,
                            children: [
                              ...listOfPairs
                                  .map((pair) => CharContainer(
                                        pair,
                                        state.usedChars,
                                      ))
                                  .toList()
                            ],
                          )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          BlocSelector<ExerciseAlphabetSoupBloc, ExerciseAlphabetSoupState, bool>(
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
                        context.read<ExerciseAlphabetSoupBloc>().add(const ExerciseAlphabetSoupEvent.nextWord());
                      }
                    }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CharContainer extends StatelessWidget {
  final Pair<UniqueId, String> pair;
  final List<UniqueId> usedChars;

  const CharContainer(this.pair, this.usedChars, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var enabled = !usedChars.contains(pair.first);

    return SizedBox(
      width: Exercises.letterContainerWidth,
      height: Exercises.letterContainerWidth,
      child: Card(
        color: enabled ? null : AppColors.grey400,
        child: InkWell(
          onTap: () {
            if (enabled) {
              context.read<ExerciseAlphabetSoupBloc>().add(CharChosen(pair));
            }
          },
          child: Center(
            child: Text(
              pair.second,
              style: Exercises.exerciseAlphabetSoupCharacterTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
