import 'package:dictionary/application/main/main_page_cubit.dart';
import 'package:dictionary/infrastructure/config/app_colors.dart';
import 'package:dictionary/infrastructure/config/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../domain/section/section_model.dart';
import '../../infrastructure/config/const.dart';
import '../../main.dart';
import '../widgets/scaffold_gradient.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      builder: (context, state) {
        return CupertinoPageScaffold(
          key: globalKey,
          navigationBar: CupertinoNavigationBar(
            middle: Column(
              children: [
                const Text("your_dictionary").tr(),
                Text(
                  "5678",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          child: ScaffoldGradient(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: mediumPadding * 2),
              child: Column(
                children: [
                  const SizedBox(
                    height: largePadding,
                  ),
                  Expanded(
                    child: _MedicationsPageBody(sections: state.sections),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _MedicationsPageBody extends StatelessWidget {
  final List<SectionModel> sections;

  _MedicationsPageBody({required this.sections, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var height = constraints.maxHeight * 0.9;

        var linesCount = sections.length;
        var rowHeight = height / linesCount;
        var iconContainerHeight = rowHeight * 0.8;

        return SafeArea(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, position) {
              var section = sections[position];

              return GestureDetector(
                onTap: () {
                  context.pushNamed(learnSectionPage);
                },
                child: SizedBox(
                  height: rowHeight,
                  child: Row(
                    children: [
                      if (position % 2 != 0) Expanded(child: Container()),
                      if (position % 2 == 0)
                        const SizedBox(
                          width: mediumPadding,
                        ),
                      _ExerciseIcon(
                        icon: section.iconData,
                        height: iconContainerHeight,
                        title: section.title,
                      ),
                      if (position % 2 != 0)
                        const SizedBox(
                          width: mediumPadding,
                        ),
                    ],
                  ),
                ),
              );
            },
            itemCount: sections.length,
          ),
        );
      },
    );
  }
}

class _ExerciseIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final double height;

  const _ExerciseIcon({
    Key? key,
    required this.title,
    required this.icon,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 18, color: AppColors.appGrey),
        ),
        Icon(
          icon,
          color: AppColors.appYellow,
          size: height,
        ),
      ],
    );
  }
}
