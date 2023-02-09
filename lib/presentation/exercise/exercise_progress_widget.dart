import 'package:dictionary/infrastructure/config/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/exercise/form/exercise_form_bloc.dart';
import '../../infrastructure/config/app_colors.dart';

class ExerciseProgressWidget extends StatelessWidget {
  const ExerciseProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mediumPadding, vertical: smallPadding),
      child: SizedBox(
        width: double.infinity,
        height: 4,
        child: BlocSelector<ExerciseFormBloc, ExerciseFormState, double>(
          selector: (state) {
            return state.activeProgressValue;
          },
          builder: (context, activeProgressValue) {
            return CustomPaint(
              painter: _ProgressPainter(activeProgressValue),
              // painter: _ProgressPainter(),
            );
          },
        ),
      ),
    );
  }
}

class _ProgressPainter extends CustomPainter {
  double activeProgressValue = 0;

  _ProgressPainter(this.activeProgressValue);

  var paintBorder = Paint()
    ..color = AppColors.appProgressBorder
    ..style = PaintingStyle.stroke;

  var paintBack = Paint()
    ..color = AppColors.appYellow
    ..strokeWidth = 0.2
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    double r = 4;

    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTRB(0, 0, w, h),
          Radius.circular(r),
        ),
        paintBorder);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTRB(0, 0, activeProgressValue * w, h),
          Radius.circular(r),
        ),
        paintBack);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
