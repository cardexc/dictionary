import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/word/word_model.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_listen_type_event.dart';

part 'exercise_listen_type_state.dart';

part 'exercise_listen_type_bloc.freezed.dart';

class ExerciseListenTypeBloc extends Bloc<ExerciseListenTypeEvent, ExerciseListenTypeState> {
  final ExerciseFormBloc formBloc;
  final List<WordModel> words;
  final Set<WordModel> wordsToBeRepeated = {};

  ExerciseListenTypeBloc({
    required this.formBloc,
    required this.words,
    required LanguageDirection languageDirection,
  }) : super(ExerciseListenTypeState.initial(
          languageDirection: languageDirection,
          words: words,
        )) {
    formBloc.add(ProgressChanged(all: state.words.length, position: state.position));

    on<WordSubmitted>((event, emit) {
      var currentWord = state.words[state.position];

      /*
      * In this exercise the only POLISH language is being worked out */
      var translation = currentWord.pl;

      if (event.value.trim() == translation) {
        emit(state.copyWith(showNextButton: true, wordIsCorrect: true, constructedWord: event.value));
      } else {
        emit(state.copyWith(showNextButton: true, constructedWord: event.value));

        wordsToBeRepeated.add(currentWord);
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
