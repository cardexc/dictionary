import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lesson/i_lesson_repository.dart';
import '../../domain/lesson/lesson_model.dart';

part 'learn_section_cubit.freezed.dart';
part 'learn_section_state.dart';

class LearnSectionCubit extends Cubit<LearnSectionState> {
  final ILessonRepository lessonRepository;

  LearnSectionCubit(this.lessonRepository) : super(LearnSectionState.initial()) {
    getLessons();
  }

  void getLessons() async {
    var lessons = await lessonRepository.getLessons();
    emit(state.copyWith(lessons: lessons));
  }
}
