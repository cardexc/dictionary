import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/multiple_choice/exercise_multiple_choice_bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratcher/scratcher.dart';

import '../../../../domain/languages.dart';
import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/word/word_model.dart';
import '../../../../infrastructure/config/app_colors.dart';
import '../../../application/exercise/form/exercise_form_bloc.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import 'exercise_multiplechoice_finish.dart';

class ExerciseMultipleChoice extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;

  const ExerciseMultipleChoice({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseMultipleChoiceBloc>(
      create: (context) => ExerciseMultipleChoiceBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: languageDirection,
        collection: words.getMultipleChoiceCollection(),
      ),
      child: _ExerciseMultipleChoiceBody(),
    );
  }
}

class _ExerciseMultipleChoiceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<ExerciseMultipleChoiceBloc, ExerciseMultipleChoiceState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished ? const ExerciseMultipleChoiceFinish() : _buildExercise(context);
      },
    );
  }

  Widget _buildExercise(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: BlocBuilder<ExerciseMultipleChoiceBloc, ExerciseMultipleChoiceState>(builder: (context, state) {
              var wordModelPair = state.collection[state.position];
              var languageDirection = state.languageDirection;
              var languageFromString = wordModelPair.first.getStringAccordingToLanguageDirection(languageDirection, 0);

              var headerWidgetHeight = 100.0;

              return Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: size.width * 0.9,
                    height: headerWidgetHeight,
                    child: Row(
                      mainAxisAlignment: languageDirection.languageFrom == Languages.pl ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
                      children: [
                        if (!languageDirection.isRu(0))
                          Image(
                            height: ExerciseMultipleChoiceBloc.langImageSize,
                            image: AssetImage(languageDirection.firstAsset),
                          ),
                        const SizedBox(
                          width: mediumPadding,
                        ),
                        SizedBox(
                          width: size.width * 0.6,
                          height: headerWidgetHeight,
                          child: Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              languageFromString,
                              style: TextStyle(
                                color: CupertinoColors.label,
                                fontSize: ExerciseMultipleChoiceBloc.wordFontSize,
                              ),
                              textAlign: languageDirection.languageFrom == Languages.pl ? TextAlign.center : TextAlign.left,
                              maxLines: 4,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: mediumPadding,
                        ),
                        if (languageDirection.languageFrom == Languages.pl) const Icon(CupertinoIcons.speaker_1, size: 32, color: AppColors.appGrey),
                      ],
                    ),
                  ),
                  const _ChoiceOptionsWidget(),
                ],
              );
            }),
          ),
          BlocSelector<ExerciseMultipleChoiceBloc, ExerciseMultipleChoiceState, bool>(
            selector: (state) {
              return state.showNextButton;
            },
            builder: (context, showNextButton) {
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: showNextButton ? 1 : 0,
                child: YellowElevatedButton(
                    titleRes: "next",
                    onPressed: () {
                      if (showNextButton) {
                        context.read<ExerciseMultipleChoiceBloc>().add(const ExerciseMultipleChoiceEvent.nextWord());
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

class _ChoiceOptionsWidget extends StatelessWidget {
  const _ChoiceOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseMultipleChoiceBloc, ExerciseMultipleChoiceState>(
      builder: (context, state) {
        var size = MediaQuery.of(context).size;
        var pair = state.collection[state.position];

        return Column(
          children: [
            ...pair.second.map((currentWord) {
              var correctWord = pair.first;
              var chosenWord = state.wordChosen;

              Color highlightColor = Colors.transparent;

              if (chosenWord != null) {
                /*Something was chosen...*/
                if (currentWord.id == chosenWord.id) {
                  highlightColor = chosenWord.id == correctWord.id ? AppColors.appYellow : exerciseErrorColor;
                } else if (currentWord.id == correctWord.id) {
                  highlightColor = AppColors.appYellow;
                }
              }

              return Card(
                key: ValueKey(currentWord.id),
                child: AnimatedContainer(
                  height: 75,
                  width: size.width * 0.95,
                  duration: Duration(milliseconds: ExerciseMultipleChoiceBloc.speed),
                  decoration: BoxDecoration(
                    color: highlightColor,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (chosenWord == null) {
                        context.read<ExerciseMultipleChoiceBloc>().add(OptionChosen(currentWord));
                      }
                    },
                    child: Center(
                      child: AutoSizeText(
                        currentWord.getStringAccordingToLanguageDirection(state.languageDirection, 1),
                        maxLines: 4,
                        style: exerciseMultipleChoiceItemsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }
}
