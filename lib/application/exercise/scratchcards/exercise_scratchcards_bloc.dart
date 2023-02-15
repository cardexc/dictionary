import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/word/word_model.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_scratchcards_event.dart';

part 'exercise_scratchcards_state.dart';

part 'exercise_scratchcards_bloc.freezed.dart';

class ExerciseScratchcardsBloc extends Bloc<ExerciseScratchcardsEvent, ExerciseScratchcardsState> {
  final ExerciseFormBloc formBloc;

  ExerciseScratchcardsBloc({
    required this.formBloc,
    required LanguageDirection languageDirection,
    required List<WordModel> words,
  }) : super(ExerciseScratchcardsState.initial(
          words: words,
          languageDirection: languageDirection,
        )) {
    formBloc.add(ProgressChanged(all: words.length, position: 0));

    on<CardScratched>((event, emit) {
      emit(state.copyWith(wasScratched: true));
    });

    on<NextWord>((event, emit) {
      if (state.position == state.words.length - 1) {
        emit(state.copyWith(isFinished: true));
      } else {
        var newState = state.copyWith(
          position: state.position + 1,
          wasScratched: false,
        );

        emit(newState);

        formBloc.add(ProgressChanged(all: words.length, position: newState.position));
      }
    });
  }
}
