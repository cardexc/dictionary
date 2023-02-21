import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/exercise/exercise_model.dart';
import '../../../domain/lesson/language_direction.dart';
import '../../../domain/words/word_model.dart';

part 'exercise_form_event.dart';

part 'exercise_form_state.dart';

part 'exercise_form_bloc.freezed.dart';

class ExerciseFormBloc extends Bloc<ExerciseFormEvent, ExerciseFormState> {
  final LanguageDirection languageDirection;
  final List<WordModel> words;
  final List<ExerciseModel> exercises;

  ExerciseFormBloc({
    required this.languageDirection,
    required this.words,
    required this.exercises,
  }) : super(ExerciseFormState.initial(
          languageDirection: languageDirection,
          words: words,
          exercises: exercises,
        )) {
    on<ProgressChanged>((event, emit) {
      emit(state.copyWith(activeProgressValue: (event.position + 1) / event.all));
    });

    on<NextExercise>((event, emit) {
      if (isFinish) {
        emit(state.copyWith(finish: true));
        return;
      }

      var nextExercise = exercises[state.exercisePosition + 1];
      emit(state.copyWith(
        exercisePosition: state.exercisePosition + 1,
        activeProgressValue: 0.0,
        activeExercise: nextExercise,
        appbarTitle: nextExercise.title,
      ));
    });
  }

  bool get isFinish => state.exercisePosition + 1 >= exercises.length;
}
