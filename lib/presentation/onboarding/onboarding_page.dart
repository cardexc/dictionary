import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../infrastructure/config/const.dart';
import '../../infrastructure/config/go_router.dart';
import '../widgets/scaffold_gradient.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradient(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: mediumPadding * 2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  context.pushNamed(mainPage);
                },
                child: const Text("Welcome, first run"),
              ),
              OutlinedButton(
                onPressed: () {
                  context.pushNamed(signInPage);
                },
                child: const Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
