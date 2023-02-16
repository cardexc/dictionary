import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise_types.dart';

part "exercise_model.freezed.dart";

@freezed
abstract class ExerciseModel with _$ExerciseModel {
  factory ExerciseModel.flashcards({
    @Default(CupertinoIcons.headphones) IconData iconData,
    required String title,
    @Default(ExerciseType.flashcards) ExerciseType type,
  }) = Flashcards;

  factory ExerciseModel.scratchcards({
    @Default(CupertinoIcons.hand_draw) IconData iconData,
    required String title,
    @Default(ExerciseType.scratchcards) ExerciseType type,
  }) = ScratchCards;

  factory ExerciseModel.multipleChoice({
    @Default(CupertinoIcons.square_grid_2x2) IconData iconData,
    required String title,
    @Default(ExerciseType.multipleChoice) ExerciseType type,
  }) = MultipleChoice;

  factory ExerciseModel.matchMaker({
    @Default(CupertinoIcons.arrow_branch) IconData iconData,
    required String title,
    @Default(ExerciseType.matchMaker) ExerciseType type,
  }) = MatchMaker;

  factory ExerciseModel.alphabetSoup({
    @Default(CupertinoIcons.arrow_swap) IconData iconData,
    required String title,
    @Default(ExerciseType.alphabetSoup) ExerciseType type,
  }) = AlphabetSoup;

  factory ExerciseModel.writing({
    @Default(CupertinoIcons.pencil_slash) IconData iconData,
    required String title,
    @Default(ExerciseType.writing) ExerciseType type,
  }) = Writing;


}
