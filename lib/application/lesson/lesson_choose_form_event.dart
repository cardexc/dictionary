part of 'lesson_choose_form_bloc.dart';

@freezed
class LessonChooseFormEvent with _$LessonChooseFormEvent {
  const factory LessonChooseFormEvent.selectAllSwitchToggled(bool newValue) = _SelectAllSwitchToggled;
  const factory LessonChooseFormEvent.updateWordItem(WordModel model) = _UpdateWordItem;
  const factory LessonChooseFormEvent.changeSelectionMode(bool newValue) = _ChangeSelectionMode;
  const factory LessonChooseFormEvent.searchByPattern(String value) = SearchByPattern;
}
