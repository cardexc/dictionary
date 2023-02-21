import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/words/word_model.dart';

import '../core/value_retrieve_failure.dart';

abstract class IWordsRepository {
  Future<Either<ValueRetrieveFailure, List<WordModel>>> getWordsByLessonId(String lessonId);
}
