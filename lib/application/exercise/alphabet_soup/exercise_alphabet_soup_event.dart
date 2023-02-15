part of 'exercise_alphabet_soup_bloc.dart';

@freezed
class ExerciseAlphabetSoupEvent with _$ExerciseAlphabetSoupEvent {
  const factory ExerciseAlphabetSoupEvent.started() = _Started;
  const factory ExerciseAlphabetSoupEvent.nextWord() = NextWord;
  const factory ExerciseAlphabetSoupEvent.charChosen(Pair<UniqueId, String> pairChar) = CharChosen;
  const factory ExerciseAlphabetSoupEvent.charRemoved() = CharRemoved;
}
