import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise_types.dart';

part "exercise_model.freezed.dart";

@freezed
abstract class ExerciseModel with _$ExerciseModel {
  factory ExerciseModel.flashcards({
    @Default(exerciseTypeFlashcardsIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.flashcards) ExerciseType type,
  }) = Flashcards;

  factory ExerciseModel.scratchcards({
    @Default(exerciseTypeScratchcardsIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.scratchcards) ExerciseType type,
  }) = ScratchCards;

  factory ExerciseModel.multipleChoice({
    @Default(exerciseTypeMultipleChoiceIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.multipleChoice) ExerciseType type,
  }) = MultipleChoice;

  factory ExerciseModel.matchMaker({
    @Default(exerciseTypeMatchMakerIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.matchMaker) ExerciseType type,
  }) = MatchMaker;

  factory ExerciseModel.alphabetSoup({
    @Default(exerciseTypeAlphabetSoupIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.alphabetSoup) ExerciseType type,
  }) = AlphabetSoup;

  factory ExerciseModel.writing({
    @Default(exerciseTypeWritingIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.writing) ExerciseType type,
  }) = Writing;

  factory ExerciseModel.listenType({
    @Default(exerciseTypeListenTypeIcon) IconData iconData,
    required String title,
    @Default(ExerciseType.listenType) ExerciseType type,
  }) = ListenType;
}
