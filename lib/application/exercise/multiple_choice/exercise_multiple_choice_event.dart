part of 'exercise_multiple_choice_bloc.dart';

@freezed
class ExerciseMultipleChoiceEvent with _$ExerciseMultipleChoiceEvent {
  const factory ExerciseMultipleChoiceEvent.started() = Started;
  const factory ExerciseMultipleChoiceEvent.optionChosen(WordModel wordModel) = OptionChosen;
  const factory ExerciseMultipleChoiceEvent.nextWord() = NextWord;
}
