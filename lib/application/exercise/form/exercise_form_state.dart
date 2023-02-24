part of 'exercise_form_bloc.dart';

@freezed
class ExerciseFormState with _$ExerciseFormState {
  const factory ExerciseFormState({
    required String appbarTitle,
    required ExerciseModel activeExercise,
    @Default(0.0) double activeProgressValue,
    @Default(0) int exercisePosition,
    @Default(false) bool finish,
  }) = _ExerciseFormState;

  factory ExerciseFormState.initial({
    required LanguageDirection languageDirection,
    required List<WordModel> words,
    required List<ExerciseModel> exercises,
  }) =>
      ExerciseFormState(
        appbarTitle: exercises[0].title,
        activeExercise: exercises[0],
      );
}
