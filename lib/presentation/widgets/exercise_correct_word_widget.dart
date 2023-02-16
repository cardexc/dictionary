import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/lesson/language_direction.dart';
import '../../domain/word/word_model.dart';
import '../../infrastructure/config/const.dart';
import 'buttons/sound_play_button.dart';
import 'enemy_language_circle.dart';

class ExerciseCorrectWordWidget extends StatelessWidget {
  final WordModel wordModel;
  final LanguageDirection languageDirection;

  const ExerciseCorrectWordWidget({
    required this.wordModel,
    required this.languageDirection,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var headerWidgetHeight = 100.0;
    var languageTo = wordModel.getStringAccordingToLanguageDirection(languageDirection, 1);

    return Container(
      color: Colors.transparent,
      height: headerWidgetHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          languageDirection.isRu(1)
              ? const EnemyLanguageCircle()
              : Image(
                  height: Exercises.langImageSize,
                  image: AssetImage(languageDirection.secondAsset),
                ),
          mediumPadding.pw,
          Expanded(
            child: AutoSizeText(
              languageTo,
              style: TextStyle(
                color: CupertinoColors.label,
                fontSize: Exercises.wordFontSize,
              ),
              textAlign: TextAlign.start,
              maxLines: 4,
            ),
          ),
          mediumPadding.pw,
          SoundPlayButton.width.pw,
        ],
      ),
    );
  }
}
