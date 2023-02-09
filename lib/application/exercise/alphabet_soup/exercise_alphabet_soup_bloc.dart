import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

    on<CharChosen>((event, emit) {
      emit(state.copyWith(constructedWord: state.constructedWord + event.char));
    });

    on<CharRemoved>((event, emit) {
      if (state.constructedWord.isNotEmpty) {
        emit(state.copyWith(constructedWord: state.constructedWord.substring(0, state.constructedWord.length - 1)));
      }
    });
  }
}
