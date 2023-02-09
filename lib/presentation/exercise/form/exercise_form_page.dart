import 'package:dictionary/domain/exercise/exercise_types.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/presentation/exercise/exercise_alphabet_soup/exercise_alphabet_soup.dart';
import 'package:dictionary/presentation/exercise/exercise_flashcards/exercise_flashcards.dart';
import 'package:dictionary/presentation/exercise/exercise_multichoice/exercise_multiplechoice.dart';
import 'package:dictionary/presentation/exercise/exercise_progress_widget.dart';
import 'package:dictionary/presentation/exercise/exercise_scratchcards/exercise_scratchcards.dart';
import 'package:dictionary/presentation/exercise/matchmaker/exercise_matchmaker_finish.dart';
import 'package:dictionary/presentation/widgets/scaffold_gradient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../domain/exercise/exercise_model.dart';
import '../../../domain/word/word_model.dart';
import '../matchmaker/exercise_matchmaker.dart';

class ExerciseFormPage extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;
  final List<ExerciseModel> exercises;

  const ExerciseFormPage({
    Key? key,
    required this.languageDirection,
    required this.words,
    required this.exercises,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseFormBloc>(
      create: (context) => ExerciseFormBloc(
        languageDirection: languageDirection,
        words: words,
        exercises: exercises,
      ),
      child: const _ExerciseFormPagePageBody(),
    );
  }
}

class _ExerciseFormPagePageBody extends StatelessWidget {
  const _ExerciseFormPagePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ExerciseFormBloc>();
    var mediaQ = MediaQuery.of(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(context.watch<ExerciseFormBloc>().state.appbarTitle),
      ),
      child: ScaffoldGradient(
        child: SizedBox.expand(
          child: BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
            builder: (context, state) {
              return Column(
                children: [
                  const ExerciseProgressWidget(),

                  /*Flashcards*/
                  if (state.activeExercise.type == ExerciseType.flashcards)
                    ExerciseFlashcards(languageDirection: bloc.languageDirection, words: bloc.words),

                  /*Scratchcards*/
                  if (state.activeExercise.type == ExerciseType.scratchcards)
                    ExerciseScratchcards(languageDirection: bloc.languageDirection, words: bloc.words),

                  /*Multiple choice*/
                  if (state.activeExercise.type == ExerciseType.multipleChoice)
                    ExerciseMultipleChoice(languageDirection: bloc.languageDirection, words: bloc.words),

                  /*Matchmaker*/
                  if (state.activeExercise.type == ExerciseType.matchMaker)
                    ExerciseMatchmaker(languageDirection: bloc.languageDirection, words: bloc.words),

                  /*Alphabet soup*/
                  if (state.activeExercise.type == ExerciseType.alphabetSoup)
                    ExerciseAlphabetSoup(languageDirection: bloc.languageDirection, words: bloc.words),


                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
