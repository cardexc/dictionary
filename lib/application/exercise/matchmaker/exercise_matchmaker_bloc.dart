import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/pair.dart';
import '../../../domain/word/word_model.dart';
import '../../../infrastructure/config/const.dart';
import '../form/exercise_form_bloc.dart';

part 'exercise_matchmaker_event.dart';

part 'exercise_matchmaker_state.dart';

part 'exercise_matchmaker_bloc.freezed.dart';

class ExerciseMatchmakerBloc extends Bloc<ExerciseMatchmakerEvent, ExerciseMatchmakerState> {
  final ExerciseFormBloc formBloc;
  final List<WordModel> initialWords;

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
          emit(state.copyWith(highlightColor: exerciseSuccessColor, wordChosenSecond: event.wordModel, secondWordColumn: event.column));
          matchedWordsUpdated.add(state.wordChosenFirst!);

          formBloc.add(ProgressChanged(all: initialWords.length, position: matchedWordsUpdated.length - 1));

        } else {

          //WRONG answer
          emit(state.copyWith(highlightColor: exerciseErrorColor, wordChosenSecond: event.wordModel, secondWordColumn: event.column));
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
        } else if (matchedWordsUpdated.isNotEmpty && matchedWordsUpdated.length % exerciseMatchmakerRowsCount == 0) {
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
    var newCollection = initialWords.skip(state.matchedWords.length).take(exerciseMatchmakerRowsCount).toList();
    var pair = newCollection.getMatchmakerCollection();
    return pair;
  }

  bool _checkIfExerciseIsFinished() {
    return state.matchedWords.length == initialWords.length;
  }
}

/*        on<OptionChosen>((event, emit)
    async {
      if (state.wordChosenFirst == null) {
        */ /*
        Word from the first column was chosen
        */ /*
        emit(state.copyWith(wordChosenFirst: event.wordModel));
      } else if (state.wordChosenSecond == null) {
        */ /*
        Word from the second column was chosen
        */ /*
        var matchedWordsUpdated = state.matchedWords;
        if (state.wordChosenFirst?.id == state.wordChosenSecond?.id) {
          //Should be highlighted as CORRECT answer
          emit(state.copyWith(highlightColor: exerciseSuccessColor, wordChosenSecond: event.wordModel));
          matchedWordsUpdated.add(state.wordChosenFirst!);
        } else {
          emit(state.copyWith(highlightColor: exerciseErrorColor, wordChosenSecond: event.wordModel));
        }

        await Future.delayed(const Duration(milliseconds: 300));

        emit(state.copyWith(highlightColor: null, wordChosenSecond: null, wordChosenFirst: null, matchedWords: matchedWordsUpdated));
      }
    });
    on<NextWord>((event, emit) {
    if (state.matchedWords.length == state.collectionPair.first.length) {
    emit(state.copyWith(isFinished: true));
    } else {
    var newCollectionToDisplayF = state.collectionPair.first.skip(state.matchedWords.length).take(exerciseMatchmakerRowsCount).toList();
    var newCollectionToDisplayS = state.collectionPair.second.skip(state.matchedWords.length).take(exerciseMatchmakerRowsCount).toList();

    var newState = state.copyWith(
    page: state.page + 1,
    showNextButton: false,
    collectionToDisplay: newCollectionToDisplay,
    );

    emit(newState);

    formBloc.add(ProgressChanged(all: collection.length, position: state.matchedWords.length));
    }
    });*/
//
//         });
//
// }
