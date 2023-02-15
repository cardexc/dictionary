import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var _kDefaultRoundedBorderSide = const BorderSide(
  color: CupertinoDynamicColor.withBrightness(
    color: Color(0x33000000),
    darkColor: Color(0x33FFFFFF),
  ),
  width: 0.0,
);

BoxDecoration defaultCupertinoBoxDecoration = BoxDecoration(
  color: const CupertinoDynamicColor.withBrightness(
    color: CupertinoColors.white,
    darkColor: CupertinoColors.black,
  ),
  border: Border(
    top: _kDefaultRoundedBorderSide,
    bottom: _kDefaultRoundedBorderSide,
    left: _kDefaultRoundedBorderSide,
    right: _kDefaultRoundedBorderSide,
  ),
  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
);

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
