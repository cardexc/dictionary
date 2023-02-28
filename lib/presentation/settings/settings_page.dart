import 'package:dictionary/application/settings/settings_cubit.dart';
import 'package:dictionary/domain/auth/logged_through.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../domain/exercise/exercise_types.dart';
import '../../infrastructure/config/const.dart';
import '../../infrastructure/config/go_router.dart';
import '../widgets/scaffold_gradient.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("settings").tr(),
      ),
      child: ScaffoldGradient(
        child: Column(
          children: [
            const SizedBox(
              height: largePadding,
            ),
            Expanded(
              child: FutureBuilder(
                future: getIt.getAsync<SettingsCubit>(),
                builder: (BuildContext context, AsyncSnapshot<SettingsCubit> snapshot) {
                  if (snapshot.hasData) {
                    return BlocProvider<SettingsCubit>(
                      create: (_) => snapshot.data!,
                      child: _SettingPageBody(),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingPageBody extends StatelessWidget {
  int languageChooseDialogShown = 0;

  _SettingPageBody({Key? key}) : super(key: key);

  Widget _retrieveIconForProvider(LoggedThrough loggedThrough) {
    switch (loggedThrough) {
      case LoggedThrough.empty:
        {
          return const Icon(FontAwesomeIcons.childReaching, size: 22);
        }
      case LoggedThrough.apple:
        {
          return const Icon(FontAwesomeIcons.apple, size: 26);
        }
      case LoggedThrough.google:
        {
          return const Icon(FontAwesomeIcons.google, size: 22);
        }
      case LoggedThrough.mail:
        {
          return const Icon(FontAwesomeIcons.envelope, size: 21);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsCubit, SettingsState>(
      listener: (context, state) {
        if (state.languageChooseDialogShown != languageChooseDialogShown) {
          showLangDialog(context);
          languageChooseDialogShown = state.languageChooseDialogShown;
        }
      },
      buildWhen: (p, c) {
        return p.languageChooseDialogShown == c.languageChooseDialogShown;
      },
      builder: (context, state) {
        var cubit = context.read<SettingsCubit>();
        return SettingsList(
          applicationType: ApplicationType.cupertino,
          lightTheme: const SettingsThemeData(
            settingsListBackground: Colors.transparent,
          ),
          sections: [


            SettingsSection(
              title: const Text(
                'account',
                style: TextStyle(color: CupertinoColors.label),
              ).tr(),
              tiles: <SettingsTile>[
                /*
                * NOT AUTHED*/
                if (!state.isAuthed)
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.group),
                    title: const Text('register_sign_in').tr(),
                    onPressed: (_) {
                      context.pushNamed(signInPage);
                    },
                  ),

                /*
                 AUTHED*/
                if (state.isAuthed)
                  SettingsTile.navigation(
                    // leading: const Icon(CupertinoIcons.group),
                    leading: _retrieveIconForProvider(state.loggedThrough),
                    title: Text(state.userName).tr(),
                    onPressed: (_) {
                      context.pushNamed(userAccountPage);
                    },
                  ),
                if (state.isAuthed)
                  SettingsTile.navigation(
                    leading: const Icon(CupertinoIcons.arrow_2_circlepath),
                    title: const Text('sync_data').tr(),
                    onPressed: (_) {},
                  ),
              ],
            ),



            SettingsSection(
              title: const Text(
                'exercises',
                style: TextStyle(color: CupertinoColors.label),
              ).tr(),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: const Icon(CupertinoIcons.arrow_3_trianglepath),
                  title: const Text('language_direction_default').tr(),
                  value: Text(LanguageDirection.getFromString(state.defaultLanguageDirection).toString()),
                  onPressed: (_) {
                    cubit.languageDirectionShowDialog();
                  },
                ),
                SettingsTile.switchTile(
                  leading: const Icon(CupertinoIcons.question_circle),
                  initialValue: state.boolMap['askLanguageDirection'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.askLanguageDirectionKey, newValue);
                  },
                  title: const Text('ask_language_direction_before_exercise').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(CupertinoIcons.quote_bubble),
                  initialValue: state.boolMap['useSentenceInExercises'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.useSentenceInExercisesKey, newValue);
                  },
                  title: const Text('use_sentences_in_exercises').tr(),
                ),
              ],
            ),
            SettingsSection(
              title: const Text(
                'active_exercises_title',
                style: TextStyle(color: CupertinoColors.label),
              ).tr(),
              tiles: <SettingsTile>[
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeFlashcardsIcon),
                  initialValue: state.boolMap['exerciseFlashcardDefaultUse'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseFlashcardDefaultUseKey, newValue);
                  },
                  title: const Text('flash_cards').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeScratchcardsIcon),
                  initialValue: state.boolMap['exerciseScratchCardsDefaultUse'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseScratchCardsDefaultUseKey, newValue);
                  },
                  title: const Text('scratch_cards').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeMultipleChoiceIcon),
                  initialValue: state.boolMap['exerciseMultipleChoiceDefaultUse'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseMultipleChoiceDefaultUseKey, newValue);
                  },
                  title: const Text('multiple_choice').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeMatchMakerIcon),
                  initialValue: state.boolMap['exerciseMatchMakerDefaultUse'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseMatchMakerDefaultUseKey, newValue);
                  },
                  title: const Text('matchmaker').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeAlphabetSoupIcon),
                  initialValue: state.boolMap['exerciseAlphabetSoupDefaultUse'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseAlphabetSoupDefaultUseKey, newValue);
                  },
                  title: const Text('alphabetSoup').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeWritingIcon),
                  initialValue: state.boolMap['exerciseWritingDefaultUse'],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseWritingDefaultUseKey, newValue);
                  },
                  title: const Text('writing').tr(),
                ),
                SettingsTile.switchTile(
                  leading: const Icon(exerciseTypeListenTypeIcon),
                  initialValue: state.boolMap["exerciseListenTypeDefaultUse"],
                  onToggle: (newValue) {
                    cubit.changeSettingBool(HiveConst.exerciseListenTypeDefaultUseKey, newValue);
                  },
                  title: const Text('listenType').tr(),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void showLangDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (_) {
        var cubit = context.read<SettingsCubit>();
        // var tStyle = TextStyle(color: )
        return CupertinoActionSheet(
          title: const Text('please_choose_ld_to_be_used_as_default').tr(),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              child: const Text('ua -> pl'),
              onPressed: () {
                cubit.onLanguageDirectionChoose(LanguageDirection.uaToPl());
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('pl -> ua'),
              onPressed: () {
                cubit.onLanguageDirectionChoose(LanguageDirection.plToUa());
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('ru -> pl'),
              onPressed: () {
                cubit.onLanguageDirectionChoose(LanguageDirection.ruToPl());
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('pl -> ru'),
              onPressed: () {
                cubit.onLanguageDirectionChoose(LanguageDirection.plToRu());
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
