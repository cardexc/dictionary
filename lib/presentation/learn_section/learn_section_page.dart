import 'package:dictionary/domain/lesson/i_lesson_repository.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/infrastructure/config/go_router.dart';
import 'package:dictionary/injection.dart';
import 'package:dictionary/presentation/widgets/scaffold_gradient.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/learn_section/learn_section_cubit.dart';

class LearnSectionPage extends StatelessWidget {
  const LearnSectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LearnSectionCubit>(
      create: (context) => LearnSectionCubit(getIt<ILessonRepository>()),
      child: const _LearnSectionPageBody(),
    );
  }
}

class _LearnSectionPageBody extends StatelessWidget {
  const _LearnSectionPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("learn").tr(),
      ),
      child: ScaffoldGradient(
        child: BlocBuilder<LearnSectionCubit, LearnSectionState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(smallPadding),
              child: ListView.builder(
                itemBuilder: (context, position) {
                  var lesson = state.lessons[position];

                  return Card(
                    child: ListTile(
                      onTap: () {
                        context.pushNamed(lessonPage, extra: lesson);
                      },
                      title: Text(lesson.title),
                      subtitle: const Text("words").plural(lesson.words.length),
                    ),
                  );
                },
                itemCount: state.lessons.length,
              ),
            );
          },
        ),
      ),
    );
    ;
  }
}
