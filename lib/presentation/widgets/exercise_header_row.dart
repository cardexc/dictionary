import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/domain/word/word_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/languages.dart';
import '../../infrastructure/config/const.dart';
import 'buttons/sound_play_button.dart';
import 'enemy_language_circle.dart';

class ExerciseHeaderRow extends StatelessWidget {
  final WordModel wordModel;
  final LanguageDirection languageDirection;
  final bool showSound;

  const ExerciseHeaderRow({
    required this.wordModel,
    required this.languageDirection,
    required this.showSound,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var headerWidgetHeight = 100.0;
    var languageFromString = wordModel.getStringAccordingToLanguageDirection(languageDirection, 0);

    return Container(
      color: Colors.transparent,
      height: headerWidgetHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          languageDirection.isRu(0)
              ? const EnemyLanguageCircle()
              : Image(
                  height: Exercises.langImageSize,
                  image: AssetImage(languageDirection.firstAsset),
                ),
          mediumPadding.pw,
          Expanded(
            child: AutoSizeText(
              languageFromString,
              style: TextStyle(
                color: CupertinoColors.label,
                fontSize: Exercises.wordFontSize,
              ),
              textAlign: TextAlign.start,
              maxLines: 4,
            ),
          ),
          mediumPadding.pw,
          showSound || languageDirection.languageFrom == Languages.pl
              ? SoundPlayButton(
                  wordModel: wordModel,
                  languageDirection: languageDirection,
                  highlightBack: false,
                )
              : SoundPlayButton.width.pw,
        ],
      ),
    );
  }
}
