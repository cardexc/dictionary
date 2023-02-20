import 'dart:math';

import 'package:dictionary/domain/core/value_objects.dart';
import 'package:dictionary/domain/languages.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/domain/word/word_model.dart';
import 'package:flutter/material.dart';

import '../pair.dart';

extension EmptyContainerExtension on num {
  SizedBox get ph => SizedBox(height: toDouble());

  SizedBox get pw => SizedBox(width: toDouble());
}

extension ListExtension<T> on Iterable<T> {
  List<T> takeExcept(bool Function(T) test) {
    List<T> result = [];

    for (var value in this) {
      if (!test.call(value)) {
        result.add(value);
      }
    }

    return result;
  }
}

extension ListOfWordModelsExtension<WordModel> on List<WordModel> {
  List<Pair<WordModel, List<WordModel>>> getMultipleChoiceCollection() {
    List<Pair<WordModel, List<WordModel>>> result = [];

    var random = Random();
    int n = min(4, length);

    for (var originalWord in this) {
      var secondArgumentList = <WordModel>[];
      while (secondArgumentList.length < n - 1) {
        var randomWord = this[random.nextInt(length)];
        if (!secondArgumentList.contains(randomWord) && randomWord != originalWord) {
          secondArgumentList.add(randomWord);
        }
      }
      secondArgumentList.insert(random.nextInt(n), originalWord);
      result.add(Pair(originalWord, secondArgumentList));
    }

    return result;
  }

  Pair<List<WordModel>, List<WordModel>> getMatchmakerCollection() {
    List<WordModel> result1 = [];
    List<WordModel> result2 = [];

    var listInt1 = List.generate(length, (index) => index++)..shuffle();
    var listInt2 = List.generate(length, (index) => index++)..shuffle();

    for (var index in listInt1) {
      result1.add(this[index]);
    }

    for (var index in listInt2) {
      result2.add(this[index]);
    }

    return Pair(result1, result2);
  }
}

List<Pair<WordModel, List<Pair<UniqueId, String>>>> getSoupLettersFromWords(List<WordModel> words, LanguageDirection languageDirection) {
  List<Pair<WordModel, List<Pair<UniqueId, String>>>> result = [];

  for (WordModel word in words) {
    var translateToString = word.getStringAccordingToLanguageDirection(languageDirection, 1);
    var list = translateToString.characters.toList();
    list.shuffle();
    var listOfPairs = list.map((e) => Pair(UniqueId(), e)).toList();

    result.add(Pair(word, listOfPairs));
  }

  return result;
}
