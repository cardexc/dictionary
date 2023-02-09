part of 'exercise_matchmaker_bloc.dart';

@freezed
class ExerciseMatchmakerEvent with _$ExerciseMatchmakerEvent {
  const factory ExerciseMatchmakerEvent.started() = ExerciseMatchmakerEventStart;
  const factory ExerciseMatchmakerEvent.optionChosen(WordModel wordModel, int column) = OptionChosen;
  const factory ExerciseMatchmakerEvent.nextWord() = NextWord;

}
