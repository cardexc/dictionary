import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/words/i_words_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lesson/i_lesson_repository.dart';
import '../../domain/lesson/lesson_model.dart';

part 'learn_section_cubit.freezed.dart';

part 'learn_section_state.dart';

class LearnSectionCubit extends Cubit<LearnSectionState> {
  final IWordsRepository _repository;

  LearnSectionCubit(this._repository) : super(LearnSectionState.initial()) {
    getLessons();
  }

  void getLessons() async {
    var lessonsEither = await _repository.getLessons();

    lessonsEither.fold(
      (failure) {
        //TODO handle Error
      },
      (list) => emit(
        state.copyWith(lessons: list),
      ),
    );
  }
}
