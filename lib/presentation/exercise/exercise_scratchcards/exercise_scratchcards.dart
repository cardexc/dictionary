import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/scratchcards/exercise_scratchcards_bloc.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/presentation/exercise/exercise_scratchcards/exercise_scratchcards_finish.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratcher/scratcher.dart';

import '../../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../../domain/languages.dart';
import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/word/word_model.dart';
import '../../../../infrastructure/config/app_colors.dart';
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
              var languageFromString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 0);
              var languageToString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 1);
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
                            height: ExerciseScratchcardsBloc.langImageSize,
                            image: AssetImage(languageDirection.firstAsset),
                          ),
                        const SizedBox(
                          width: mediumPadding,
                        ),
                        SizedBox(
                          width: size.width * 0.6,
                          height: headerWidgetHeight,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AutoSizeText(
                              languageFromString,
                              style: TextStyle(
                                color: CupertinoColors.label,
                                fontSize: ExerciseScratchcardsBloc.wordFontSize,
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
                            fontSize: ExerciseScratchcardsBloc.wordFontSize,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 4,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: largePadding),
                  if (languageDirection.languageTo == Languages.pl)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child: Container()),
                        Image(
                          height: ExerciseScratchcardsBloc.langImageSize,
                          image: AssetImage(languageDirection.secondAsset),
                        ),
                        const SizedBox(width: mediumPadding),
                        const Icon(CupertinoIcons.speaker_1, size: 32, color: AppColors.appGrey),
                        SizedBox(width: size.width * 0.05),
                      ],
                    ),
                  if (languageDirection.languageTo == Languages.uk)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child: Container()),
                        Image(
                          height: ExerciseScratchcardsBloc.langImageSize,
                          image: AssetImage(languageDirection.secondAsset),
                        ),
                        SizedBox(width: size.width * 0.05),
                      ],
                    ),
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
}
