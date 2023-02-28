import 'package:dictionary/domain/exercise/exercise_model.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/domain/words/word_model.dart';
import 'package:dictionary/presentation/auth/sign_in_page.dart';
import 'package:dictionary/presentation/learn_section/learn_section_page.dart';
import 'package:dictionary/presentation/lesson/language_direction/language_direction_page.dart';
import 'package:dictionary/presentation/onboarding/onboarding_page.dart';
import 'package:dictionary/presentation/settings/settings_page.dart';
import 'package:dictionary/presentation/splash/splash_page.dart';
import 'package:dictionary/presentation/user/user_account_page.dart';
import 'package:go_router/go_router.dart';

import '../../domain/lesson/lesson_model.dart';
import '../../presentation/exercise/choose/exercise_choose_page.dart';
import '../../presentation/exercise/form/exercise_form_page.dart';
import '../../presentation/lesson/choose_lesson_form/choose_lesson_page.dart';
import '../../presentation/main /main_page.dart';

const String learnSectionPage = "/learn_section";
const String mainPage = "/mainPage";
const String lessonPage = "/lesson";
const String languageChoosePage = "/language_choose";
const String exerciseChoosePage = "/exerciseChoosePage";
const String exerciseFormPage = "/exerciseFormPage";
const String settingsPage = "/settingsPage";
const String signInPage = "/signInPage";
const String splashPage = "/splashPage";
const String onBoardingPage = "/onBoardingPage";
const String userAccountPage = "/userAccountPage";

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: "/",
      name: splashPage,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: mainPage,
      name: mainPage,
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: learnSectionPage,
      name: learnSectionPage,
      builder: (context, state) => const LearnSectionPage(),
    ),
    GoRoute(
      path: lessonPage,
      name: lessonPage,
      builder: (context, state) => LessonPage(lesson: state.extra as LessonModel),
    ),
    GoRoute(
      path: languageChoosePage,
      name: languageChoosePage,
      builder: (context, state) => LanguageDirectionChoosePage(words: state.extra as List<WordModel>),
    ),
    GoRoute(
      path: exerciseChoosePage,
      name: exerciseChoosePage,
      builder: (context, state) {
        var map = (state.extra as Map<dynamic, dynamic>);
        var words = map["words"] as List<WordModel>;
        var languageDirection = map["languageDirection"] as LanguageDirection;

        return ExerciseChoosePage(words: words, languageDirection: languageDirection);
      },
    ),
    GoRoute(
      path: exerciseFormPage,
      name: exerciseFormPage,
      builder: (context, state) {
        var map = (state.extra as Map<dynamic, dynamic>);
        var words = map["words"] as List<WordModel>;
        var languageDirection = map["languageDirection"] as LanguageDirection;
        var exercises = map["exercises"] as List<ExerciseModel>;

        return ExerciseFormPage(
          words: words,
          languageDirection: languageDirection,
          exercises: exercises,
        );
      },
    ),
    GoRoute(
      path: settingsPage,
      name: settingsPage,
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
    GoRoute(
      path: signInPage,
      name: signInPage,
      builder: (context, state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      path: onBoardingPage,
      name: onBoardingPage,
      builder: (context, state) {
        return const OnBoardingPage();
      },
    ),
    GoRoute(
      path: userAccountPage,
      name: userAccountPage,
      builder: (context, state) {
        return const UserAccountPage();
      },
    ),
  ],
);
