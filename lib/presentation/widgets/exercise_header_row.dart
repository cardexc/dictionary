import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/domain/words/word_model.dart';
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
  final bool bloorBack;
  final double sigmaX = 5.0;
  final double sigmaY = 5.0;
  final headerWidgetHeight = 100.0;
  final bool usePadding;
  final bool playOnBuild;

  const ExerciseHeaderRow({
    required this.wordModel,
    required this.languageDirection,
    required this.showSound,
    this.bloorBack = false,
    this.usePadding = false,
    this.playOnBuild = false,
    Key? key,
  }) : super(key: key);

  Widget get _rowChild => Container(
        color: Colors.transparent,
        height: headerWidgetHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (usePadding) mediumPadding.pw,
            languageDirection.isRu(0)
                ? const EnemyLanguageCircle()
                : Image(
                    height: Exercises.langImageSize,
                    image: AssetImage(languageDirection.firstAsset),
                  ),
            mediumPadding.pw,
            Expanded(
              child: AutoSizeText(
                wordModel.getStringAccordingToLanguageDirection(languageDirection, 0),
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
                    playOnBuild: false,
                  )
                : SoundPlayButton.width.pw,
            if (usePadding) mediumPadding.pw,
          ],
        ),
      );

  Widget get _rowChildNoTextField => SizedBox(
        height: headerWidgetHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (usePadding) mediumPadding.pw,
            languageDirection.isRu(0)
                ? const EnemyLanguageCircle()
                : Image(
                    height: Exercises.langImageSize,
                    image: AssetImage(languageDirection.firstAsset),
                  ),
            mediumPadding.pw,
            Expanded(
              child: Container(),
            ),
            mediumPadding.pw,
            showSound || languageDirection.languageFrom == Languages.pl
                ? SoundPlayButton(
                    wordModel: wordModel,
                    languageDirection: languageDirection,
                    highlightBack: false,
                    playOnBuild: playOnBuild,
                  )
                : SoundPlayButton.width.pw,
            if (usePadding) mediumPadding.pw,
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return bloorBack
        ? Stack(
            children: [
              _rowChild,
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: sigmaX,
                    sigmaY: sigmaY,
                  ),
                  child: Opacity(
                    opacity: 0.01,
                    child: _rowChild,
                  ),
                ),
              ),
              _rowChildNoTextField,
            ],
          )
        : _rowChild;
  }
}
