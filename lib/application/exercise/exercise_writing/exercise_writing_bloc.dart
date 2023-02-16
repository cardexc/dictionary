import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/word/word_model.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_writing_event.dart';

part 'exercise_writing_state.dart';

part 'exercise_writing_bloc.freezed.dart';

class ExerciseWritingBloc extends Bloc<ExerciseWritingEvent, ExerciseWritingState> {
  final ExerciseFormBloc formBloc;
  final List<WordModel> words;

  ExerciseWritingBloc({
    required this.formBloc,
    required this.words,
    required LanguageDirection languageDirection,
  }) : super(ExerciseWritingState.initial(
          languageDirection: languageDirection,
          words: words,
        )) {

    formBloc.add(ProgressChanged(all: state.words.length, position: state.position));

    on<WordSubmitted>((event, emit) {
      var currentWord = state.words[state.position];
      var translation = currentWord.getStringAccordingToLanguageDirection(languageDirection, 1);
      if (event.value == translation) {
        emit(state.copyWith(showNextButton: true, wordIsCorrect: true, constructedWord: event.value));
      } else {
        emit(state.copyWith(showNextButton: true, constructedWord: event.value));
      }
    });

    on<NextWord>((event, emit) {
      if (state.words.length - 1 == state.position) {
        emit(state.copyWith(
          isFinished: true,
        ));
      } else {
        formBloc.add(ProgressChanged(all: state.words.length, position: state.position + 1));

        emit(state.copyWith(
          constructedWord: "",
          wordIsCorrect: false,
          showNextButton: false,
          position: state.position + 1,
        ));
      }
    });
  }
}
