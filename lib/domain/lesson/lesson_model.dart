import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';
import '../word/word_model.dart';

part "lesson_model.freezed.dart";

@unfreezed
abstract class LessonModel with _$LessonModel {
  factory LessonModel({
    required final int sortValue,
    required final UniqueId id,
    required final String title,
    required List<WordModel> words,
  }) = _LessonModel;
}
