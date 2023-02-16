part of 'exercise_writing_bloc.dart';

@freezed
class ExerciseWritingEvent with _$ExerciseWritingEvent {
  const factory ExerciseWritingEvent.started() = _Started;

  const factory ExerciseWritingEvent.nextWord() = NextWord;

  const factory ExerciseWritingEvent.wordSubmitted(String value) = WordSubmitted;
}
