part of 'exercise_flashcards_bloc.dart';

@freezed
class ExerciseFlashcardsEvent with _$ExerciseFlashcardsEvent {
  const factory ExerciseFlashcardsEvent.started() = _Started;
  const factory ExerciseFlashcardsEvent.cardFlipped() = CardFlipped;
  const factory ExerciseFlashcardsEvent.nextWord() = NextWord;
}
