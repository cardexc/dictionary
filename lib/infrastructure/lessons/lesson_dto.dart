import 'package:dictionary/domain/lesson/lesson_model.dart';
import 'package:isar/isar.dart';

import '../../domain/core/value_objects.dart';
import '../words/models/word_dto.dart';

part 'lesson_dto.g.dart';

@collection
class LessonDto {
  Id? databaseId = Isar.autoIncrement;

  UniqueId? id;

  String? title;

  final words = IsarLinks<WordDto>();

  LessonDto({
    this.databaseId,
    this.id,
    this.title,
  });

  factory LessonDto.fromDomain(LessonModel model) {
    return LessonDto(
      id: model.id,
      databaseId: model.databaseId,
      title: model.title,
    );
  }

  LessonModel toDomain() {
    return LessonModel(
      id: id ?? UniqueId(),
      databaseId: databaseId!,
      title: title ?? "",
      sortValue: 0,
      words: words.map((e) => e.toDomain()).toList(),
    );
  }
}
