import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';
import '../words/word_model.dart';

part "lesson_model.freezed.dart";

@unfreezed
abstract class LessonModel with _$LessonModel {
  factory LessonModel({
    required final UniqueId id,
    required final int? databaseId,
    required final String title,
    required final int sortValue,
    required List<WordModel> words,
  }) = _LessonModel;
}
