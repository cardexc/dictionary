import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/lesson/lesson_model.dart';

import '../../../../domain/core/value_retrieve_failure.dart';
import '../../../../domain/words/word_model.dart';

abstract class IWordsLocalDataSource {
  Future<Either<ValueRetrieveFailure, List<LessonModel>>> getLessons();

  Future<Either<ValueRetrieveFailure, List<WordModel>>> getWordsByLessonId(int databaseId);
}
