import 'package:flutter/material.dart';

import '../../infrastructure/config/app_colors.dart';

class EnemyLanguageCircle extends StatelessWidget {
  const EnemyLanguageCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(backgroundColor: AppColors.appBlack, child: Text("ru", style: TextStyle(fontSize: 11)));
  }
}
