import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/pair.dart';
import '../../../domain/words/word_model.dart';
import '../../../infrastructure/config/const.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_matchmaker_bloc.freezed.dart';

part 'exercise_matchmaker_event.dart';

part 'exercise_matchmaker_state.dart';

class ExerciseMatchmakerBloc extends Bloc<ExerciseMatchmakerEvent, ExerciseMatchmakerState> {
  final ExerciseFormBloc formBloc;
  final List<WordModel> initialWords;
  final Set<WordModel> wordsToBeRepeated = {};

  ExerciseMatchmakerBloc({
    required this.formBloc,
    required this.initialWords,
    required LanguageDirection languageDirection,
  }) : super(ExerciseMatchmakerState.initial(collection: Pair([], []), languageDirection: languageDirection)) {
    on<ExerciseMatchmakerEventStart>((event, emit) async {
      emit(state.copyWith(collectionToDisplayPair: _takeNewCollection()));
    });

    on<OptionChosen>((event, emit) async {
      if (state.wordChosenFirst == null) {
        /*
        First word was chosen
        */
        emit(state.copyWith(wordChosenFirst: event.wordModel, firstWordColumn: event.column));
      } else if (state.wordChosenSecond == null) {
        /*
        Second Word
        */

        List<WordModel> matchedWordsUpdated = List.from(state.matchedWords);
        if (state.wordChosenFirst == event.wordModel) {
          //Should be highlighted as CORRECT answer

          emit(state.copyWith(
            highlightColor: Exercises.exerciseSuccessColor,
            wordChosenSecond: event.wordModel,
            secondWordColumn: event.column,
            correctWords: state.correctWords + 1,
          ));

          matchedWordsUpdated.add(state.wordChosenFirst!);

          formBloc.add(
            ProgressChanged(all: initialWords.length, position: matchedWordsUpdated.length - 1),
          );
        } else {
          /*
          WRONG answer
          */

          Set<WordModel> wordsToBeRepeatedNew;
          if (state.firstWordColumn == 0) {
            wordsToBeRepeated.add(state.wordChosenFirst!);
          } else {
            wordsToBeRepeated.add(event.wordModel);
          }

          emit(state.copyWith(
            highlightColor: Exercises.exerciseErrorColor,
            wordChosenSecond: event.wordModel,
            secondWordColumn: event.column,
          ));
        }

        await Future.delayed(const Duration(milliseconds: 700));

        emit(state.copyWith(
            highlightColor: null,
            wordChosenSecond: null,
            wordChosenFirst: null,
            firstWordColumn: null,
            secondWordColumn: null,
            matchedWords: matchedWordsUpdated));

        if (_checkIfExerciseIsFinished()) {
          emit(state.copyWith(isFinished: true));
        } else if (matchedWordsUpdated.isNotEmpty && matchedWordsUpdated.length % Exercises.exerciseMatchmakerRowsCount == 0) {
          emit(state.copyWith(showNextButton: true));
        }
      }
    });

    on<NextWord>((event, emit) {
      if (_checkIfExerciseIsFinished()) {
        emit(state.copyWith(isFinished: true));
      } else {
        var newPairCollection = _takeNewCollection();

        var newState = state.copyWith(
          page: state.page + 1,
          showNextButton: false,
          collectionToDisplayPair: newPairCollection,
        );

        emit(newState);
      }
    });

    add(const ExerciseMatchmakerEventStart());
  }

  Pair<List<WordModel>, List<WordModel>> _takeNewCollection() {
    var newCollection = initialWords.skip(state.matchedWords.length).take(Exercises.exerciseMatchmakerRowsCount).toList();
    var pair = newCollection.getMatchmakerCollection();
    return pair;
  }

  bool _checkIfExerciseIsFinished() {
    return state.matchedWords.length == initialWords.length;
  }
}
