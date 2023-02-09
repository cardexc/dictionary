import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/alphabet_soup/exercise_alphabet_soup_bloc.dart';
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
    return BlocSelector<ExerciseAlphabetSoupBloc, ExerciseAlphabetSoupState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished ? Container() : _buildExercise(context);
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
            child: BlocBuilder<ExerciseAlphabetSoupBloc, ExerciseAlphabetSoupState>(
              builder: (context, state) {
                var wordPair = state.letters[state.position];
                var wordModel = wordPair.first;
                var lettersList = wordPair.second;
                var languageDirection = state.languageDirection;
                var languageFromString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 0);
                var headerWidgetHeight = 100.0;
                var lettersWidgetHeight = 400.0;
                var tController = TextEditingController()..text = state.constructedWord;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                  child: Column(
                    children: [
                      /*
                      * Header*/
                      _buildHeaderRow(languageDirection, size, headerWidgetHeight, languageFromString),

                      /*
                      * Constructed word*/
                      const SizedBox(height: largePadding),
                      CupertinoTextField(
                        readOnly: true,
                        enableSuggestions: false,
                        controller: tController,
                        padding: const EdgeInsets.all(mediumPadding),
                        style: Exercises.exerciseAlphabetSoupConstructedWordTextStyle,
                        clearButtonMode: OverlayVisibilityMode.always,
                        suffix: IconButton(
                          icon: const Icon(CupertinoIcons.delete_left),
                          onPressed: () {
                            context.read<ExerciseAlphabetSoupBloc>().add(const CharRemoved());
                          },
                        ),
                        maxLines: 4,
                        minLines: 1,
                      ),
                      const SizedBox(height: largePadding),

                      /*Letters*/
                      Wrap(
                        spacing: smallPadding,
                        runSpacing: smallPadding,
                        children: [...lettersList.map((letter) => CharContainer(letter)).toList()],
                      )
                    ],
                  ),
                );
              },
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

  Row _buildHeaderRow(LanguageDirection languageDirection, Size size, double headerWidgetHeight, String languageFromString) {
    return Row(
      mainAxisAlignment: languageDirection.languageFrom == Languages.pl ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
      children: [
        if (!languageDirection.isRu(0))
          Image(
            height: Exercises.langImageSize,
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
                fontSize: Exercises.wordFontSize,
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
    );
  }

/*Widget _buildContainer(BuildContext context, WordModel wordModel, int column, ExerciseMatchmakerState state) {
    Color borderHighlightColor = Colors.transparent;
    if (state.wordChosenFirst != null &&
        state.wordChosenSecond == null &&
        (column == state.firstWordColumn || column == state.secondWordColumn) &&
        wordModel == state.wordChosenFirst) {
      borderHighlightColor = exerciseSuccessColor;
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
              style: exerciseMatchmakerItemsTextStyle,
              textAlign: TextAlign.center,
              maxLines: 5,
            ),
          ),
        ),
      ),
    );
  }*/
}

class CharContainer extends StatelessWidget {
  final String ch;

  const CharContainer(this.ch, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Exercises.letterContainerWidth,
      height: Exercises.letterContainerWidth,
      child: Card(
        child: InkWell(
          onTap: () {
            context.read<ExerciseAlphabetSoupBloc>().add(CharChosen(ch));
          },
          child: Center(
            child: Text(
              ch,
              style: Exercises.exerciseAlphabetSoupCharacterTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
