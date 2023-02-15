import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/scratchcards/exercise_scratchcards_bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/presentation/exercise/exercise_scratchcards/exercise_scratchcards_finish.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratcher/scratcher.dart';

import '../../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../../domain/languages.dart';
import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/word/word_model.dart';
import '../../../../infrastructure/config/app_colors.dart';
import '../../widgets/buttons/sound_play_button.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';

class ExerciseScratchcards extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;

  const ExerciseScratchcards({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseScratchcardsBloc>(
      create: (context) => ExerciseScratchcardsBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: languageDirection,
        words: words,
      ),
      child: const _ExerciseScratchcardsBody(),
    );
  }
}

class _ExerciseScratchcardsBody extends StatelessWidget {
  const _ExerciseScratchcardsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ExerciseScratchcardsBloc, ExerciseScratchcardsState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished ? const ExerciseScratchcardsFinish() : _buildExercise(context);
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
            child: BlocBuilder<ExerciseScratchcardsBloc, ExerciseScratchcardsState>(builder: (context, state) {
              var wordModel = state.words[state.position];
              var languageDirection = state.languageDirection;

              var languageToString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 1);

              return Column(
                children: [
                  /*Header*/
                  _buildHeader(languageDirection, wordModel),

                  /*Scratcher*/
                  Scratcher(
                    key: ValueKey(wordModel.id),
                    brushSize: 30,
                    threshold: 50,
                    color: AppColors.appGrey,
                    onScratchStart: () => context.read<ExerciseScratchcardsBloc>().add(const ExerciseScratchcardsEvent.cardScratched()),
                    child: Container(
                      height: 150,
                      width: size.width * 0.8,
                      color: Colors.transparent,
                      child: Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          languageToString,
                          style: TextStyle(
                            color: CupertinoColors.label,
                            fontSize: Exercises.wordFontSize,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 4,
                        ),
                      ),
                    ),
                  ),
                  largePadding.ph,
                  if (languageDirection.languageTo == Languages.pl)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                          height: Exercises.langImageSize,
                          image: AssetImage(languageDirection.secondAsset),
                        ),
                        mediumPadding.pw,
                        SoundPlayButton(
                          wordModel: wordModel,
                          languageDirection: languageDirection,
                        ),
                        mediumPadding.pw,
                      ],
                    ),
                  if (languageDirection.languageTo == Languages.uk)
                    Padding(
                      padding: const EdgeInsets.only(right: mediumPadding),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image(
                          height: Exercises.langImageSize,
                          image: AssetImage(languageDirection.secondAsset),
                        ),
                      ),
                    )
                ],
              );
            }),
          ),
          BlocSelector<ExerciseScratchcardsBloc, ExerciseScratchcardsState, bool>(
            selector: (state) {
              return state.wasScratched;
            },
            builder: (context, wasFlipped) {
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: wasFlipped ? 1 : 0,
                child: YellowElevatedButton(
                    titleRes: "next",
                    onPressed: () {
                      if (wasFlipped) {
                        context.read<ExerciseScratchcardsBloc>().add(const ExerciseScratchcardsEvent.nextWord());
                      }
                    }),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(LanguageDirection languageDirection, WordModel wordModel) {
    var headerWidgetHeight = 100.0;
    var languageFromString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 0);

    return Container(
      color: Colors.transparent,
      height: headerWidgetHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          mediumPadding.pw,
          if (!languageDirection.isRu(0))
            Image(
              height: Exercises.langImageSize,
              image: AssetImage(languageDirection.firstAsset),
            ),
          mediumPadding.pw,
          Expanded(
            child: AutoSizeText(
              languageFromString,
              style: TextStyle(
                color: CupertinoColors.label,
                fontSize: Exercises.wordFontSize,
              ),
              textAlign: TextAlign.center,
              maxLines: 4,
            ),
          ),
          mediumPadding.pw,
          languageDirection.languageFrom == Languages.pl
              ? SoundPlayButton(
                  wordModel: wordModel,
                  languageDirection: languageDirection,
                  highlightBack: false,
                )
              : SoundPlayButton.width.pw,
          mediumPadding.pw,
        ],
      ),
    );
  }
}
