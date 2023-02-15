import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/lesson/language_direction.dart';
import '../../../domain/pair.dart';
import '../../../domain/word/word_model.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_alphabet_soup_event.dart';

part 'exercise_alphabet_soup_state.dart';

part 'exercise_alphabet_soup_bloc.freezed.dart';

class ExerciseAlphabetSoupBloc extends Bloc<ExerciseAlphabetSoupEvent, ExerciseAlphabetSoupState> {
  final ExerciseFormBloc formBloc;
  final List<WordModel> words;

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

        emit(
          state.copyWith(
            showNextButton: true,
            wordFinished: true,
            wordConstructionError: state.constructedWord != languageFromWord,
          ),
        );
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
