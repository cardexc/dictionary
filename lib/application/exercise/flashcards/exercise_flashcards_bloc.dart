import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/words/word_model.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_flashcards_event.dart';

part 'exercise_flashcards_state.dart';

part 'exercise_flashcards_bloc.freezed.dart';

class ExerciseFlashcardsBloc extends Bloc<ExerciseFlashcardsEvent, ExerciseFlashcardsState> {
  final int speed = 250;
  static double cardSize = 300;
  static double langImageSize = 35;
  static double wordFontSize = 35.0;

  final ExerciseFormBloc formBloc;

  ExerciseFlashcardsBloc({
    required this.formBloc,
    required LanguageDirection languageDirection,
    required List<WordModel> words,
  }) : super(ExerciseFlashcardsState.initial(
          words: words,
          languageDirection: languageDirection,
        )) {
    formBloc.add(ProgressChanged(all: words.length, position: 0));

    on<CardFlipped>((event, emit) {
      emit(state.copyWith(wasFlipped: true));
    });

    on<NextWord>((event, emit) {
      if (state.position == state.words.length - 1) {
        emit(state.copyWith(isFinished: true));
      } else {
        var newState = state.copyWith(
          position: state.position + 1,
          wasFlipped: false,
        );

        emit(newState);

        formBloc.add(ProgressChanged(all: words.length, position: newState.position));
      }
    });
  }
}
