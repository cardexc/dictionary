part of 'exercise_multiple_choice_bloc.dart';

@freezed
class ExerciseMultipleChoiceState with _$ExerciseMultipleChoiceState {

  factory ExerciseMultipleChoiceState({
    @Default(false) bool isFinished,
    @Default(false) bool showNextButton,
    required int position,
    required List<Pair<WordModel, List<WordModel>>> collection,
    required LanguageDirection languageDirection,
    WordModel? wordChosen,
  }) = _ExerciseMultipleChoiceState;


  factory ExerciseMultipleChoiceState.initial({
    required LanguageDirection languageDirection,
    required List<Pair<WordModel, List<WordModel>>> collection,
  }) =>
      ExerciseMultipleChoiceState(
        position: 0,
        languageDirection: languageDirection,
        collection: collection,
      );
}
