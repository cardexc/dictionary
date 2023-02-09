import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

const extraSmallPadding = 4.0;
const smallPadding = 8.0;
const mediumPadding = 16.0;
const largePadding = 24.0;

const defaultDatePattern = "dd.MM.yyyy";

class Exercises {
  static const langImageSize = 35.0;
  static double wordFontSize = 35.0;
  static double letterContainerWidth = 70.0;

  static TextStyle exerciseAlphabetSoupCharacterTextStyle = exerciseCardItemsTextStyle.copyWith(fontWeight: FontWeight.w300);
  static TextStyle exerciseAlphabetSoupConstructedWordTextStyle = exerciseCardItemsTextStyle.copyWith(fontWeight: FontWeight.w400, letterSpacing: 2, fontSize: 26);
}

const animationDuration = Duration(milliseconds: 250);

const predefinedBackgroundButtonGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [AppColors.appYellow, AppColors.isAboutToBeExpiredColor],
);

const TextStyle exerciseCardItemsTextStyle = TextStyle(fontWeight: FontWeight.w300, fontSize: 19.0);
const TextStyle exerciseMultipleChoiceItemsTextStyle = exerciseCardItemsTextStyle;
const TextStyle exerciseMatchmakerItemsTextStyle = exerciseCardItemsTextStyle;

Color exerciseErrorColor = Colors.red[200]!;
Color exerciseSuccessColor = AppColors.appYellow;

//Exercise MATCHMAKER
const exerciseMatchmakerRowsCount = 5;

Widget getErrorToast(String title, BuildContext context) {
  var width = MediaQuery.of(context).size.width * 0.9;

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.red,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          CupertinoIcons.xmark_circle,
          color: Colors.white,
        ),
        const SizedBox(width: 12.0),
        SizedBox(
          width: width * 0.75,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
