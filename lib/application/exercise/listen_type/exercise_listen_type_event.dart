part of 'exercise_listen_type_bloc.dart';

@freezed
class ExerciseListenTypeEvent with _$ExerciseListenTypeEvent {
  const factory ExerciseListenTypeEvent.started() = _Started;

  const factory ExerciseListenTypeEvent.nextWord() = NextWord;

  const factory ExerciseListenTypeEvent.wordSubmitted(String value) = WordSubmitted;
}
