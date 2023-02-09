import 'package:dictionary/infrastructure/helpers/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/config/app_colors.dart';
import '../../../infrastructure/config/const.dart';

class YellowElevatedButton extends StatelessWidget {
  Function onPressed;
  String titleRes;
  final double? widthPercent;

  YellowElevatedButton({Key? key, required this.onPressed, required this.titleRes, this.widthPercent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: _buildBody(context),
    ));
  }

  _buildBody(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * (widthPercent ?? 0.6),
      child: Padding(
        padding: hasNotch ? EdgeInsets.zero : const EdgeInsets.only(bottom: mediumPadding),
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.appYellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding, vertical: mediumPadding),
            child: Text(
              titleRes,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ).tr(),
          ),
        ),
      ),
    );
  }
}
