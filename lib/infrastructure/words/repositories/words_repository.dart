import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/lesson/lesson_model.dart';
import 'package:dictionary/domain/words/word_model.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/value_retrieve_failure.dart';
import '../../../domain/words/i_words_repository.dart';
import '../data_sources/local/i_words_local_data_source.dart';

@LazySingleton(as: IWordsRepository)
class WordsRepository implements IWordsRepository {
  IWordsLocalDataSource localDataSource;

  WordsRepository({
    required this.localDataSource,
  });

  @override
  Future<Either<ValueRetrieveFailure, List<WordModel>>> getWordsByLessonId(String lessonId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueRetrieveFailure, List<LessonModel>>> getLessons() {
    return localDataSource.getLessons();
  }
}
