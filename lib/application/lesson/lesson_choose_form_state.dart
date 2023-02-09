part of 'lesson_choose_form_bloc.dart';

@freezed
class LessonChooseFormState with _$LessonChooseFormState {
  factory LessonChooseFormState({
    required String title,
    required List<WordModel> words,
    @Default(false) bool selectionMode,
    @Default(false) bool selectAllSwitchState,
    @Default(false) bool searchIsActive,
  }) = _LessonChooseFormState;

  factory LessonChooseFormState.initial(LessonModel lesson) => LessonChooseFormState(
        title: lesson.title,
        words: lesson.words,
      );
}
