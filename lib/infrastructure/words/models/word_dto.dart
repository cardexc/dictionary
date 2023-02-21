import 'package:isar/isar.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/words/word_model.dart';
import '../../lessons/lesson_dto.dart';

part "word_dto.g.dart";

@collection
class WordDto {
  Id? databaseId = Isar.autoIncrement;

  UniqueId? id;

  UniqueId? lessonId;

  String? uk;

  String? ru;

  String? pl;

  bool? sentence;

  @Backlink(to: 'words')
  final lesson = IsarLink<LessonDto>();

  WordDto({
    this.databaseId,
    this.id,
    this.lessonId,
    this.uk,
    this.pl,
    this.ru,
    this.sentence,
  });

  factory WordDto.fromDomain(WordModel model) {
    return WordDto(
      databaseId: model.databaseId,
      id: model.id,
      lessonId: model.lessonId,
      sentence: model.sentence,
      uk: model.uk,
      pl: model.pl,
      ru: model.ru,
    );
  }

  WordModel toDomain() {
    return WordModel(
      id: id ?? UniqueId(),
      lessonId: lessonId ?? UniqueId(),
      databaseId: databaseId!,
      sentence: sentence ?? false,
      uk: uk ?? "",
      ru: ru ?? "",
      pl: pl ?? "",
    );
  }
}
