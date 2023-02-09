// import 'package:dictionary/domain/lesson/lesson_model.dart';
// import 'package:dictionary/presentation/lesson/widgets/word_model_primitive.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// import '../../../domain/core/value_objects.dart';
//
// part "lesson_model_primitive.freezed.dart";
//
// @freezed
// abstract class LessonModelPrimitive with _$LessonModelPrimitive {
//
//   LessonModelPrimitive._();
//
//   factory LessonModelPrimitive({
//     required int sortValue,
//     required UniqueId id,
//     required String title,
//     required List<WordModelPrimitive> words,
//   }) = _LessonModelPrimitive;
//
//   factory LessonModelPrimitive.fromDomain(LessonModel model) => LessonModelPrimitive(
//         sortValue: model.sortValue,
//         id: model.id,
//         title: model.title,
//         words: model.words.map((e) => WordModelPrimitive.fromDomain(e)).toList(),
//       );
//
//   LessonModel toDomain() => LessonModel(
//         sortValue: sortValue,
//         id: id,
//         title: title,
//         words: words.map((e) => e.toDomain()).toList(),
//       );
// }
