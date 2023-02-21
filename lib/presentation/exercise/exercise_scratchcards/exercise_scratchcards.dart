import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/scratchcards/exercise_scratchcards_bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratcher/scratcher.dart';

import '../../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/words/word_model.dart';
import '../../../../infrastructure/config/app_colors.dart';
import '../../../domain/exercise/exercise_types.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import '../../widgets/enemy_language_circle.dart';
import '../../widgets/exercise_header_row.dart';
import '../exercise_finish_widget.dart';

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
    var bloc = context.read<ExerciseScratchcardsBloc>();

    return BlocSelector<ExerciseScratchcardsBloc, ExerciseScratchcardsState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished
            ? ExerciseFinishWidget(
                totalWords: bloc.state.words.length,
                wordsToBeRepeated: 0,
                type: ExerciseType.scratchcards,
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
          Align(
            alignment: Alignment.topCenter,
            child: BlocBuilder<ExerciseScratchcardsBloc, ExerciseScratchcardsState>(builder: (context, state) {
              var wordModel = state.words[state.position];
              var languageDirection = state.languageDirection;

              var languageToString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 1);

              return Column(
                children: [
                  /*Header*/
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                    child: ExerciseHeaderRow(wordModel: wordModel, languageDirection: languageDirection, showSound: state.wasScratched),
                  ),

                  /*Scratcher*/
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: largePadding),
                    child: Scratcher(
                      key: ValueKey(wordModel.id),
                      brushSize: 30,
                      threshold: 50,
                      color: AppColors.appGrey,
                      onScratchStart: () => context.read<ExerciseScratchcardsBloc>().add(const ExerciseScratchcardsEvent.cardScratched()),
                      child: Container(
                        height: 150,
                        child: Stack(
                          children: [
                            Positioned(
                              left: largePadding,
                              top: largePadding,
                              child: languageDirection.isRu(1)
                                  ? const EnemyLanguageCircle()
                                  : Image(
                                      height: Exercises.langImageSize,
                                      image: AssetImage(languageDirection.secondAsset),
                                    ),
                            ),
                            Align(
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  largePadding.ph,
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
