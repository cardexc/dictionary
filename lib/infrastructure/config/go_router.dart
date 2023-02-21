import 'package:dictionary/domain/exercise/exercise_model.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:dictionary/domain/words/word_model.dart';
import 'package:dictionary/presentation/learn_section/learn_section_page.dart';
import 'package:dictionary/presentation/lesson/language_direction/language_direction_page.dart';
import 'package:go_router/go_router.dart';

import '../../domain/lesson/lesson_model.dart';
import '../../presentation/exercise/choose/exercise_choose_page.dart';
import '../../presentation/exercise/form/exercise_form_page.dart';
import '../../presentation/lesson/choose_lesson_form/choose_lesson_page.dart';
import '../../presentation/main /main_page.dart';

const String learnSectionPage = "/learn_section";
const String lessonPage = "/lesson";
const String languageChoosePage = "/language_choose";
const String exerciseChoosePage = "/exerciseChoosePage";
const String exerciseFormPage = "/exerciseFormPage";

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: "home",
      builder: (context, state) => const MainPage(),
      routes: [],
    ),
    GoRoute(
      path: learnSectionPage,
      name: learnSectionPage,
      builder: (context, state) => const LearnSectionPage(),
      routes: [],
    ),
    GoRoute(
      path: lessonPage,
      name: lessonPage,
      builder: (context, state) => LessonPage(lesson: state.extra as LessonModel),
      routes: [],
    ),
    GoRoute(
      path: languageChoosePage,
      name: languageChoosePage,
      builder: (context, state) => LanguageDirectionChoosePage(words: state.extra as List<WordModel>),
      routes: [],
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
  ],
);
