import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/application/exercise/flashcards/exercise_flashcards_bloc.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/presentation/exercise/exercise_flashcards/exercise_flashcards_finish.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../domain/languages.dart';
import '../../../domain/lesson/language_direction.dart';
import '../../../domain/word/word_model.dart';
import '../../../infrastructure/config/app_colors.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';

class ExerciseFlashcards extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;

  const ExerciseFlashcards({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseFlashcardsBloc>(
      create: (context) => ExerciseFlashcardsBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: languageDirection,
        words: words,
      ),
      child: const _ExerciseFlashcardsBody(),
    );
  }
}

class _ExerciseFlashcardsBody extends StatelessWidget {
  const _ExerciseFlashcardsBody({Key? key}) : super(key: key);

  BoxDecoration get decoration => const BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      );

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ExerciseFlashcardsBloc, ExerciseFlashcardsState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished ? const ExerciseFlashcardsFinish() : _buildExercise(context);
      },
    );
  }

  Widget _buildExercise(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            left: (size.width - ExerciseFlashcardsBloc.cardSize) / 2,
            top: (size.width - ExerciseFlashcardsBloc.cardSize) / 2,
            child: _buildCard(context),
          ),
          BlocSelector<ExerciseFlashcardsBloc, ExerciseFlashcardsState, bool>(
            selector: (state) {
              return state.wasFlipped;
            },
            builder: (context, wasFlipped) {
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: wasFlipped ? 1 : 0,
                child: YellowElevatedButton(
                    titleRes: "next",
                    onPressed: () {
                      if (wasFlipped) {
                        context.read<ExerciseFlashcardsBloc>().add(const ExerciseFlashcardsEvent.nextWord());
                      }
                    }),
              );
            },
          ),
        ],
      ),
    );
  }

  BlocBuilder _buildCard(BuildContext context) {
    var bloc = context.read<ExerciseFlashcardsBloc>();

    return BlocBuilder<ExerciseFlashcardsBloc, ExerciseFlashcardsState>(
      builder: (context, state) {
        var wordModel = state.words[state.position];
        var languageDirection = state.languageDirection;

        return Card(
          elevation: 0,
          color: Colors.transparent,
          child: FlipCard(
            key: ValueKey(wordModel.id.value),
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            speed: bloc.speed,
            onFlipDone: (status) {
              bloc.add(const ExerciseFlashcardsEvent.cardFlipped());
            },
            front: _buildCardSide(languageDirection, wordModel, 0),
            back: _buildCardSide(languageDirection, wordModel, 1),
          ),
        );
      },
    );
  }

  Widget _buildCardSide(LanguageDirection languageDirection, WordModel wordModel, int side) {
    return Container(
      height: ExerciseFlashcardsBloc.cardSize,
      width: ExerciseFlashcardsBloc.cardSize,
      decoration: decoration,
      child: Padding(
        padding: const EdgeInsets.all(mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!languageDirection.isRu(side))
                  Image(
                    height: ExerciseFlashcardsBloc.langImageSize,
                    image: AssetImage(side == 0 ? languageDirection.firstAsset : languageDirection.secondAsset),
                  ),
                if ((languageDirection.languageFrom == Languages.pl && side == 0) || (languageDirection.languageTo == Languages.pl && side == 1))
                  const Icon(CupertinoIcons.speaker_1, size: 32, color: AppColors.appGrey),
              ],
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  width: ExerciseFlashcardsBloc.cardSize,
                  child: AutoSizeText(
                    wordModel.getStringAccordingToLanguageDirection(languageDirection, side),
                    style: TextStyle(
                      color: AppColors.appBlack,
                      fontSize: ExerciseFlashcardsBloc.wordFontSize,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: largePadding,
            ),
          ],
        ),
      ),
    );
  }
}
