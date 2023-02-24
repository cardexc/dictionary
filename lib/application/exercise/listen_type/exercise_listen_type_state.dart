part of 'exercise_listen_type_bloc.dart';

@freezed
class ExerciseListenTypeState with _$ExerciseListenTypeState {
  factory ExerciseListenTypeState({
    @Default(false) bool isFinished,
    @Default(false) bool showNextButton,
    @Default(false) bool wordIsCorrect,
    @Default(0) int position,
    required LanguageDirection languageDirection,
    required List<WordModel> words,
    @Default("") String constructedWord,
  }) = _ExerciseListenTypeState;

  factory ExerciseListenTypeState.initial({
    required LanguageDirection languageDirection,
    required List<WordModel> words
  }) =>
      ExerciseListenTypeState(
        languageDirection: languageDirection,
        words: words,
      );
}
