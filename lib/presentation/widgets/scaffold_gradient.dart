import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldGradient extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const ScaffoldGradient({
    Key? key,
    required this.child,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [0.1, 0.3, 0.7, 0.9],
          colors: [
            Colors.blue[100]!,
            Colors.blue[200]!,
            Colors.yellow[200]!,
            Colors.yellow[100]!,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: backgroundColor ?? Colors.transparent,
        body: child,
      ),
    );
  }
}
