part of 'exercise_form_bloc.dart';

@freezed
class ExerciseFormEvent with _$ExerciseFormEvent {
  const factory ExerciseFormEvent.started() = _Started;

  const factory ExerciseFormEvent.progressChanged({
    required int all,
    required int position,
  }) = ProgressChanged;
}
