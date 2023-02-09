import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/lesson/lesson_model.dart';
import 'package:dictionary/domain/word/word_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/transformers.dart';

import '../../domain/lesson/i_lesson_repository.dart';

part 'lesson_choose_form_event.dart';

part 'lesson_choose_form_state.dart';

part 'lesson_choose_form_bloc.freezed.dart';

class LessonChooseFormBloc extends Bloc<LessonChooseFormEvent, LessonChooseFormState> {
  final ILessonRepository lessonRepository;
  final LessonModel lesson;
  List<WordModel> filteredWords = [];

  LessonChooseFormBloc({required this.lesson, required this.lessonRepository}) : super(LessonChooseFormState.initial(lesson)) {
    on<LessonChooseFormEvent>((event, emit) {
      event.map(
        selectAllSwitchToggled: (event) {
          var modified = lesson.words.map((word) => word.copyWith(selected: event.newValue)).toList();
          lesson.words = modified;

          emit(state.copyWith(selectAllSwitchState: event.newValue, words: modified));
        },
        updateWordItem: (event) {
          var modified = lesson.words.map((word) => word.id == event.model.id ? event.model : word).toList();
          lesson.words = modified;

          var selectAllSwitchNewState = modified.every((element) => element.selected);
          emit(
            state.copyWith(
              words: modified,
              selectAllSwitchState: selectAllSwitchNewState,
            ),
          );
        },
        changeSelectionMode: (event) {
          emit(state.copyWith(selectionMode: event.newValue));
        },
        searchByPattern: (SearchByPattern value) {
          /*Handled below*/
        },
      );
    });

    on<SearchByPattern>((event, emit) {
      if (event.value.isEmpty) {
        emit(
          state.copyWith(words: lesson.words, searchIsActive: false),
        );
      } else {
        var modified =
            lesson.words.where((word) => word.pl.contains(event.value) || word.uk.contains(event.value) || word.ru.contains(event.value)).toList();
        filteredWords = modified;

        emit(
          state.copyWith(words: filteredWords, searchIsActive: true),
        );
      }
    }, transformer: debounce(const Duration(milliseconds: 500)));
  }

  void onDismiss(WordModel model) {
    lessonRepository.removeWordFromLesson(lesson.id, model.id);
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
