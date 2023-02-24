import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/lesson/language_direction.dart';
import '../../../domain/pair.dart';
import '../../../domain/words/word_model.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_alphabet_soup_bloc.freezed.dart';
part 'exercise_alphabet_soup_event.dart';
part 'exercise_alphabet_soup_state.dart';

class ExerciseAlphabetSoupBloc extends Bloc<ExerciseAlphabetSoupEvent, ExerciseAlphabetSoupState> {
  final ExerciseFormBloc formBloc;
  final List<WordModel> words;
  final Set<WordModel> wordsToBeRepeated = {};

  ExerciseAlphabetSoupBloc({
    required this.formBloc,
    required this.words,
    required LanguageDirection languageDirection,
  }) : super(
          ExerciseAlphabetSoupState.initial(
            languageDirection: languageDirection,
            letters: getSoupLettersFromWords(words, languageDirection),
          ),
        ) {
    on<ExerciseAlphabetSoupEvent>((event, emit) {});

    on<CharChosen>((event, emit) async {
      emit(
        state.copyWith(
          constructedWord: state.constructedWord + event.pairChar.second,
          usedChars: List.from(state.usedChars)..add(event.pairChar.first),
        ),
      );

      if (state.usedChars.length == state.letters[state.position].second.length) {
        /*All letters have been chosen*/

        var languageFromWord = state.letters[state.position].first.getStringAccordingToLanguageDirection(languageDirection, 1);

        var isError = state.constructedWord != languageFromWord;

        emit(
          state.copyWith(
            showNextButton: true,
            wordFinished: true,
            wordConstructionError: isError,
          ),
        );

        if (isError) {
          wordsToBeRepeated.add(state.letters[state.position].first);
        }
      }
    });

    on<CharRemoved>((event, emit) {
      if (state.constructedWord.isNotEmpty) {
        emit(
          state.copyWith(
              constructedWord: state.constructedWord.substring(0, state.constructedWord.length - 1),
              usedChars: List.from(state.usedChars)..removeLast()),
        );
      }
    });
    on<NextWord>((event, emit) {
      if (state.letters.length - 1 == state.position) {
        emit(state.copyWith(
          isFinished: true,
        ));
        formBloc.add(ProgressChanged(all: state.letters.length, position: state.position + 1));
      } else {
        formBloc.add(ProgressChanged(all: state.letters.length, position: state.position));
        emit(state.copyWith(
          constructedWord: "",
          usedChars: [],
          wordFinished: false,
          wordConstructionError: false,
          showNextButton: false,
          position: state.position + 1,
        ));
      }
    });
  }
}
