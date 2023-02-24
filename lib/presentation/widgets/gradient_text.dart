import 'package:flutter/material.dart';

import '../../infrastructure/config/const.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    Key? key,
    this.gradient = exerciseFinishTextGradient,
    this.style,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient!.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }

  LinearGradient linearGradient(String state) {
    return LinearGradient(colors: [
      state == "1" ? const Color(0xff4BC7AC) : const Color(0xff1E1E1E),
      state == "1" ? const Color(0xff3F78C7) : const Color(0xff1E1E1E),
    ]);
  }
}
