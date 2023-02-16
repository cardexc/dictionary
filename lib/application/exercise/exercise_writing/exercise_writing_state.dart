part of 'exercise_writing_bloc.dart';

@freezed
class ExerciseWritingState with _$ExerciseWritingState {
  factory ExerciseWritingState({
    @Default(false) bool isFinished,
    @Default(false) bool showNextButton,
    @Default(false) bool wordIsCorrect,
    @Default(0) int position,
    required LanguageDirection languageDirection,
    required List<WordModel> words,
    @Default("") String constructedWord,
}) = _ExerciseWritingState;

  factory ExerciseWritingState.initial({
    required LanguageDirection languageDirection,
    required List<WordModel> words
  }) =>
      ExerciseWritingState(
        languageDirection: languageDirection,
        words: words,
      );


}
