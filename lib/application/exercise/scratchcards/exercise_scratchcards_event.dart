part of 'exercise_scratchcards_bloc.dart';

@freezed
class ExerciseScratchcardsEvent with _$ExerciseScratchcardsEvent {
  const factory ExerciseScratchcardsEvent.started() = _Started;
  const factory ExerciseScratchcardsEvent.cardScratched() = CardScratched;
  const factory ExerciseScratchcardsEvent.nextWord() = NextWord;
}
