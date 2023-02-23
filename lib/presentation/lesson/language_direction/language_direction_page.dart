import 'package:dictionary/application/language_direction/language_direction_cubit.dart';
import 'package:dictionary/domain/languages.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import '../../../domain/words/word_model.dart';
import '../../../infrastructure/config/app_colors.dart';
import '../../../infrastructure/config/go_router.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import '../../widgets/enemy_language_circle.dart';
import '../../widgets/scaffold_gradient.dart';

class LanguageDirectionChoosePage extends StatelessWidget {
  List<WordModel> words;

  LanguageDirectionChoosePage({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("choose_lang_direction").tr(),
      ),
      child: ScaffoldGradient(
        child: BlocProvider<LanguageDirectionCubit>(
          create: (context) => LanguageDirectionCubit(
            words: words,
            box: Hive.box(HiveConst.boxName),
          ),
          child: const _LanguageDirectionChoosePageBody(),
        ),
      ),
    );
  }
}

class _LanguageDirectionChoosePageBody extends StatelessWidget {
  const _LanguageDirectionChoosePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageDirectionCubit, LanguageDirectionState>(
      builder: (context, state) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _LanguageDirectionRow(
                  language: Languages.ua,
                ),
                const _LanguageDirectionRow(
                  language: Languages.ru,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: smallPadding),
                  child: Row(
                    children: [
                      Checkbox(
                        value: state.alwaysUseSelectedDirection,
                        onChanged: (newValue) {
                          context.read<LanguageDirectionCubit>().changeAskLanguageDirection(newValue!);
                        },
                        shape: const CircleBorder(),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            context.read<LanguageDirectionCubit>().changeAskLanguageDirection(!state.alwaysUseSelectedDirection);
                          },
                          child: const Text(
                            "always_choose_this_language_direction",
                            maxLines: 5,
                          ).tr(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            YellowElevatedButton(
                titleRes: "next",
                onPressed: () {
                  _onNext(context);
                })
          ],
        );
      },
    );
  }

  void _onNext(BuildContext context) {

    var cubit = context.read<LanguageDirectionCubit>();

    cubit.writeSettings();

    var extraMap = <dynamic, dynamic>{
      "words": cubit.words,
      "languageDirection": cubit.state.direction,
    };

    context.pushNamed(exerciseChoosePage, extra: extraMap);
  }
}

class _LanguageDirectionRow extends StatelessWidget {
  final Languages language;

  const _LanguageDirectionRow({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (language == Languages.ua) Expanded(child: _LanguageDirectionBlock(languageDirection: LanguageDirection.uaToPl())),
        if (language == Languages.ua) Expanded(child: _LanguageDirectionBlock(languageDirection: LanguageDirection.plToUa())),
        if (language == Languages.ru) Expanded(child: _LanguageDirectionBlock(languageDirection: LanguageDirection.ruToPl())),
        if (language == Languages.ru) Expanded(child: _LanguageDirectionBlock(languageDirection: LanguageDirection.plToRu())),
      ],
    );
  }
}

class _LanguageDirectionBlock extends StatelessWidget {
  final LanguageDirection languageDirection;

  const _LanguageDirectionBlock({
    Key? key,
    required this.languageDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageDirectionCubit, LanguageDirectionState>(
      builder: (context, state) {
        var size = 55.0;
        return GestureDetector(
          onTap: () {
            context.read<LanguageDirectionCubit>().changeDirection(languageDirection);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: largePadding, vertical: largePadding),
            child: AnimatedContainer(
              height: size,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(mediumPadding)),
                // border: Border.all(
                //   width: state.direction == languageDirection ? 1 : 1,
                //   color: state.direction == languageDirection ? AppColors.appYellow : AppColors.grey400,
                // ),
                gradient: state.direction == languageDirection ? predefinedBackgroundButtonGradient : null,
              ),
              duration: const Duration(milliseconds: 200),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    // Expanded(child: Container(),),
                    SizedBox(
                        // height: size,
                        child: languageDirection.languageFrom == Languages.ru
                            ? const EnemyLanguageCircle()
                            : Image(
                                image: AssetImage(languageDirection.firstAsset),
                              )),
                    const Expanded(
                        child: Icon(
                      CupertinoIcons.chevron_compact_right,
                      color: AppColors.white,
                      size: 22,
                    )),
                    SizedBox(
                        // height: size,
                        child: languageDirection.languageTo == Languages.ru
                            ? const EnemyLanguageCircle()
                            : Image(
                                image: AssetImage(languageDirection.secondAsset),
                              )),
                    // Expanded(child: Container(),),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
