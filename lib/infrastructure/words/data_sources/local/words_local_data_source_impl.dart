import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/words/word_model.dart';
import 'package:dictionary/infrastructure/database/database_helper.dart';
import 'package:dictionary/infrastructure/lessons/lesson_dto.dart';
import 'package:dictionary/infrastructure/words/models/word_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../../domain/core/value_retrieve_failure.dart';
import '../../../../domain/lesson/lesson_model.dart';
import 'i_words_local_data_source.dart';

@LazySingleton(as: IWordsLocalDataSource)
class WordsLocalDataSourceImpl extends IWordsLocalDataSource {
  DatabaseHelper databaseHelper;

  WordsLocalDataSourceImpl(this.databaseHelper);

  @override
  Future<Either<ValueRetrieveFailure, List<LessonModel>>> getLessons() async {
    try {
      List<LessonModel> result = [];

      var allLessonsDto = await databaseHelper.instance.lessonDtos.where().findAll();

      for (var element in allLessonsDto) {
        await element.words.load();
        result.add(element.toDomain());
      }

      return Right(result);
    } catch (_) {
      return const Left(ValueRetrieveFailure.unexpectedError());
    }
  }

  @override
  Future<Either<ValueRetrieveFailure, List<WordModel>>> getWordsByLessonId(int databaseId) async {
    try {
      var dtoList = await databaseHelper.instance.wordDtos.filter().lesson((q) => q.databaseIdEqualTo(databaseId)).findAll();

      var modelsList = dtoList.map((e) => e.toDomain()).toList();

      return Right(modelsList);
    } catch (_) {
      return const Left(ValueRetrieveFailure.unexpectedError());
    }
  }
}
