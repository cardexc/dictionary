import 'package:dictionary/domain/lesson/lesson_model.dart';

import '../core/value_objects.dart';

abstract class ILessonRepository {
  Future<List<LessonModel>> getLessons();

  void removeWordFromLesson(UniqueId lessonId, UniqueId wordId);
}
