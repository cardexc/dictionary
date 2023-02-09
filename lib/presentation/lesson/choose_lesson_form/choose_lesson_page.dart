import 'package:dictionary/application/lesson/lesson_choose_form_bloc.dart';
import 'package:dictionary/domain/lesson/i_lesson_repository.dart';
import 'package:dictionary/domain/word/word_model.dart';
import 'package:dictionary/infrastructure/config/app_colors.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/lesson/lesson_model.dart';
import '../../../infrastructure/config/go_router.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import '../../widgets/scaffold_gradient.dart';

class LessonPage extends StatelessWidget {
  final LessonModel lesson;

  const LessonPage({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LessonChooseFormBloc>(
      create: (context) => LessonChooseFormBloc(lesson: lesson, lessonRepository: getIt<ILessonRepository>()),
      child: const _LessonSectionPageBody(),
    );
  }
}

class _LessonSectionPageBody extends StatelessWidget {
  const _LessonSectionPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LessonChooseFormBloc, LessonChooseFormState>(
      listenWhen: (prev, next) {
        return false;
      },
      listener: (context, state) {},
      builder: (context, state) {
        var bloc = context.read<LessonChooseFormBloc>();

        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(state.title),
          ),
          child: ScaffoldGradient(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*
                  * Search*/
                    _buildSearch(context),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(mediumPadding, mediumPadding, mediumPadding, 0),
                      child: const Text("choose_words_for_training_with_selection").tr(),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: state.selectionMode ? 48 : 0,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(mediumPadding, smallPadding, mediumPadding, 0),
                        child: SizedBox(
                          height: 48,
                          child: Row(
                            children: [
                              if (state.selectionMode)
                                CupertinoSwitch(
                                  activeColor: AppColors.appYellow,
                                  value: state.selectAllSwitchState,
                                  onChanged: (value) {
                                    bloc.add(LessonChooseFormEvent.selectAllSwitchToggled(value));
                                  },
                                ),
                              const SizedBox(width: largePadding),
                              const Text(
                                "choose_words_for_training",
                                textAlign: TextAlign.left,
                              ).tr(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: smallPadding, left: smallPadding, right: smallPadding),
                        child: _ListOfWords(),
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: YellowElevatedButton(
                        titleRes: "next",
                        onPressed: () {
                          context.pushNamed(languageChoosePage,
                              extra: state.selectionMode ? state.words.where((element) => element.selected).toList() : state.words);
                        }),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Padding _buildSearch(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(mediumPadding, mediumPadding, mediumPadding, 0),
      child: CupertinoTextField(
        onChanged: (value) {
          context.read<LessonChooseFormBloc>().add(SearchByPattern(value));
        },
        keyboardType: TextInputType.text,
        placeholder: 'Search for specific words',
        placeholderStyle: const TextStyle(
          color: Color(0xffC4C6CC),
          fontSize: 14.0,
          fontFamily: 'Brutal',
        ),
        prefix: const Padding(
          padding: EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
          child: Icon(
            Icons.search,
            color: Color(0xffC4C6CC),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffF0F1F5),
        ),
      ),
    );
  }
}

class _ListOfWords extends StatelessWidget {
  const _ListOfWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonChooseFormBloc, LessonChooseFormState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, position) {
            var word = state.words[position];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: extraSmallPadding, horizontal: extraSmallPadding),
              child: Dismissible(
                onDismissed: (direction) {
                  context.read<LessonChooseFormBloc>().onDismiss(word);
                },
                key: ValueKey(word.id),
                background: _buildPrimaryBackground(),
                secondaryBackground: _buildSecondaryBackground(context),
                dismissThresholds: const <DismissDirection, double>{DismissDirection.startToEnd: 0.2},
                confirmDismiss: (direction) => confirmDismiss(direction, context, word),
                // child: _WordItemWidget(word: state.word),
                child: _WordItemWidget(
                  word: word,
                ),
              ),
            );
          },
          itemCount: state.words.length,
        );
      },
    );
  }

  Widget _buildPrimaryBackground() {
    return Container(
      padding: const EdgeInsets.only(left: mediumPadding),
      color: AppColors.appYellow,
      alignment: Alignment.centerLeft,
      child: const Icon(CupertinoIcons.checkmark_alt_circle, color: Colors.white),
    );
  }

  Widget _buildSecondaryBackground(BuildContext context) {
    return Container(
      // most importantly, do not forget to give the inner container a
      // padding to the right so that our icon does not stick to the
      // wall of the container when swiping
      padding: const EdgeInsets.only(right: mediumPadding),
      color: Theme.of(context).colorScheme.error,
      alignment: Alignment.centerRight,
      child: const Icon(CupertinoIcons.delete, color: Colors.white),
    );
  }

  Future<bool> confirmDismiss(DismissDirection direction, BuildContext context, WordModel word) async {
    var bloc = context.read<LessonChooseFormBloc>();

    if (direction == DismissDirection.startToEnd) {
      if (bloc.state.selectionMode) {
        /*Selection mode is ON
        In this case only one item's state must be toggled*/
        bloc.add(LessonChooseFormEvent.updateWordItem(word.copyWith(selected: true)));
      } else {
        bloc.add(const LessonChooseFormEvent.changeSelectionMode(true));
      }
      return false;
    } else {
      return await _showDismissibleConfirm(context);
    }
  }

  Future<dynamic> _showDismissibleConfirm(BuildContext context) {
    return showCupertinoDialog(
        context: context,
        builder: (buildContext) {
          return CupertinoAlertDialog(
            title: const Text('confirm_deletion').tr(),
            content: const Text('are_you_sure_you_want_to_delete').tr(),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('yes').tr(),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: const Text('no').tr(),
              ),
            ],
          );
        });
  }
}

class _WordItemWidget extends StatelessWidget {
  final WordModel word;

  const _WordItemWidget({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LessonChooseFormBloc>();
    return Card(
      margin: const EdgeInsets.all(0),
      child: ListTile(
        leading: bloc.state.selectionMode
            ? CupertinoSwitch(
                activeColor: AppColors.appYellow,
                value: word.selected,
                onChanged: (value) {
                  bloc.add(LessonChooseFormEvent.updateWordItem(word.copyWith(selected: value)));
                },
              )
            : null,
        title: Text(word.uk),
        subtitle: Text(word.pl),
      ),
    );
  }
}
