import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/core/value_objects.dart';
import 'package:dictionary/infrastructure/helpers/asset_helper.dart';
import 'package:dictionary/infrastructure/lessons/lesson_dto.dart';
import 'package:dictionary/infrastructure/words/models/word_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../domain/core/value_retrieve_failure.dart';
import '../../domain/lesson/lesson_model.dart';
import '../../domain/words/word_model.dart';

@lazySingleton
class DatabaseHelper {
  late Isar _isar;

  Isar get instance => _isar;

  final AssetHelper _assetHelper;

  DatabaseHelper(this._assetHelper);

  Future<void> init() async {
    _isar = await Isar.open([
      WordDtoSchema,
      LessonDtoSchema,
    ]);

    await _isar.writeTxn(() async {
      await _isar.clear();
    });

    checkIfDatabaseNeedToBeFulfilledWithInitialData();
  }

  void checkIfDatabaseNeedToBeFulfilledWithInitialData() async {
    if (await _isar.wordDtos.where().isEmpty() == true) {
      _fulfillWithInitialData();
    }
  }

  void _fulfillWithInitialData() async {
    if (await _isar.wordDtos.where().isEmpty() == true) {
      await _isar.writeTxn(() async {
        var allDataJson = await _assetHelper.loadWordsAsset();

        List<dynamic> mainCollection = allDataJson["data"];

        for (var element in mainCollection) {
          //1.
          var lessonTitle = element["title"];
          var lesson = LessonDto(id: UniqueId(), title: lessonTitle);

          //2.
          List<dynamic> wordsCollection = element["words"];

          //3.
          for (var wordJson in wordsCollection) {
            var word = WordDto(
              id: UniqueId(),
              lessonId: lesson.id,
              pl: wordJson["pl"],
              ru: wordJson["ru"],
              uk: wordJson["uk"],
              sentence: wordJson["sentence"],
            );

            lesson.words.add(word);
            await _isar.wordDtos.put(word);
            await _isar.lessonDtos.put(lesson);
            await lesson.words.save();
          }
        }
      });
    }
  }
}
