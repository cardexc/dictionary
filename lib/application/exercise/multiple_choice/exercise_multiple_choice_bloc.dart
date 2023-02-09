import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/word/word_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/pair.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_multiple_choice_event.dart';

part 'exercise_multiple_choice_state.dart';

part 'exercise_multiple_choice_bloc.freezed.dart';

class ExerciseMultipleChoiceBloc extends Bloc<ExerciseMultipleChoiceEvent, ExerciseMultipleChoiceState> {
  static int speed = 250;
  static double cardSize = 300;
  static double langImageSize = 35;
  static double wordFontSize = 35.0;

  final ExerciseFormBloc formBloc;

  ExerciseMultipleChoiceBloc({
    required this.formBloc,
    required List<Pair<WordModel, List<WordModel>>> collection,
    required LanguageDirection languageDirection,
  }) : super(ExerciseMultipleChoiceState.initial(collection: collection, languageDirection: languageDirection)) {

    formBloc.add(ProgressChanged(all: collection.length, position: 0));

    on<OptionChosen>((event, emit) {
      emit(state.copyWith(
        wordChosen: event.wordModel,
        showNextButton: true,
      ));
    });
    on<NextWord>((event, emit) {
      if (state.position == state.collection.length - 1) {
        emit(state.copyWith(isFinished: true));
      } else {
        var newState = state.copyWith(position: state.position + 1, showNextButton: false, wordChosen: null);

        emit(newState);

        formBloc.add(ProgressChanged(all: collection.length, position: newState.position));
      }
    });
  }
}
