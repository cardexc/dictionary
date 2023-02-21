import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/exercise/exercise_model.dart';
import 'package:dictionary/domain/exercise/exercise_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/words/word_model.dart';

part 'exercise_choose_bloc.freezed.dart';

part 'exercise_choose_event.dart';

part 'exercise_choose_state.dart';

class ExerciseChooseBloc extends Bloc<ExerciseChooseEvent, ExerciseChooseState> {
  final LanguageDirection languageDirection;
  final List<WordModel> words;
  final List<ExerciseModel> exercises;

  ExerciseChooseBloc({
    required this.languageDirection,
    required this.words,
    required this.exercises,
  }) : super(ExerciseChooseState.initial(
          words: words,
        )) {
    on<ExerciseChosen>((event, emit) {
      var newMap = state.exercisesStates;

      /*These exercise mustn't be chosen both at the same time*/
      if (event.type == ExerciseType.scratchcards && state.exercisesStates[ExerciseType.flashcards] == true) {
        newMap = state.exercisesStates.map((key, value) => MapEntry(key, key == ExerciseType.flashcards ? false : value));
      }
      if (event.type == ExerciseType.flashcards && state.exercisesStates[ExerciseType.scratchcards] == true) {
        newMap = state.exercisesStates.map((key, value) => MapEntry(key, key == ExerciseType.scratchcards ? false : value));
      }

      newMap = newMap.map((key, value) => MapEntry(key, key == event.type ? event.newState : value));

      emit(state.copyWith(exercisesStates: newMap));
    });
  }
}
