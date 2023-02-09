part of 'exercise_choose_bloc.dart';

@freezed
class ExerciseChooseEvent with _$ExerciseChooseEvent {
  const factory ExerciseChooseEvent.started() = _Started;
  const factory ExerciseChooseEvent.exerciseChosen(ExerciseType type, bool newState) = ExerciseChosen;
}
