part of 'learn_section_cubit.dart';

@freezed
class LearnSectionState with _$LearnSectionState {
  factory LearnSectionState({
    required List<LessonModel> lessons,
  }) = _Initial;

  factory LearnSectionState.initial() => LearnSectionState(
        lessons: [],
      );
}
