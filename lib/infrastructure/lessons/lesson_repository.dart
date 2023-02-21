import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/domain/lesson/i_lesson_repository.dart';
import 'package:dictionary/domain/lesson/lesson_model.dart';
import 'package:dictionary/domain/words/word_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/value_objects.dart';

@LazySingleton(as: ILessonRepository)
class LessonRepositoryImpl extends ILessonRepository {
  List<LessonModel> testLessons = [];

  /*  LessonModel(
        id: UniqueId(),
        title: "Топ 100 помилок",
        words: [
          WordModel(uk: "снеговик", ru: "", pl: "bałwan", id: UniqueId()),
          WordModel(uk: "грязь", ru: "", pl: "błoto", id: UniqueId()),
          WordModel(uk: "коричневый", ru: "", pl: "brązowy", id: UniqueId()),
          WordModel(uk: "скот", ru: "", pl: "bydło", id: UniqueId()),
          WordModel(uk: "бельё", ru: "", pl: "bielizna", id: UniqueId()),
          WordModel(uk: "радоваться", ru: "", pl: "cieszyć się", id: UniqueId()),
          WordModel(uk: "печенье", ru: "", pl: "ciasto", id: UniqueId()),
          WordModel(uk: "время", ru: "", pl: "czas", id: UniqueId()),
          WordModel(uk: "череп", ru: "", pl: "czaszka", id: UniqueId()),
          WordModel(uk: "подстерегать", ru: "", pl: "czyhać", id: UniqueId()),
          WordModel(uk: "чихать", ru: "", pl: "kichać", id: UniqueId()),
        ],
        sortValue: 1),
    LessonModel(id: UniqueId(), title: "Людина. Частини тіла", words: [
      WordModel(id: UniqueId(), uk: "тіло", ru: "тело", pl: "ciało"),
      WordModel(id: UniqueId(), uk: "шия", ru: "шея", pl: "szyja"),
      WordModel(id: UniqueId(), uk: "грудна клітка", ru: "грудная клетка", pl: "klatka piersiowa"),
      WordModel(id: UniqueId(), uk: "живіт", ru: "живот", pl: "brzuch"),
      WordModel(id: UniqueId(), uk: "таз", ru: "таз", pl: "biodro"),
      WordModel(id: UniqueId(), uk: "геніталії", ru: "гениталии", pl: "genitalia"),
      WordModel(id: UniqueId(), uk: "голень", ru: "голень", pl: "goleń"),
      WordModel(id: UniqueId(), uk: "сосок", ru: "cосок", pl: "sutek"),
      WordModel(id: UniqueId(), uk: "голова", ru: "голова", pl: "głowa"),
      WordModel(id: UniqueId(), uk: "грудь", ru: "грудь", pl: "pierś"),
      WordModel(id: UniqueId(), uk: "талія", ru: "талия", pl: "pas"),
      WordModel(id: UniqueId(), uk: "пупок", ru: "пуп", pl: "pępek"),
      WordModel(id: UniqueId(), uk: "передпліччя", ru: "предплечие", pl: "przedramię"),
      WordModel(id: UniqueId(), uk: "пах", ru: "пах", pl: "pachwina"),
      WordModel(id: UniqueId(), uk: "нога", ru: "нога", pl: "noga"),
      WordModel(id: UniqueId(), uk: "cтегно", ru: "бедро", pl: "udo"),
      WordModel(id: UniqueId(), uk: "коліно", ru: "колено", pl: "kolano"),
      WordModel(id: UniqueId(), uk: "стопа", ru: "cтопа", pl: "stopa"),
      WordModel(id: UniqueId(), uk: "надпліччя", ru: "надплечье", pl: "bark"),
      WordModel(id: UniqueId(), uk: "плече", ru: "плечо", pl: "ramię"),
      WordModel(id: UniqueId(), uk: "підмишка", ru: "подмышка", pl: "pacha"),
      WordModel(id: UniqueId(), uk: "загривок", ru: "холка", pl: "kark"),
      WordModel(id: UniqueId(), uk: "плечі", ru: "плечи", pl: "plecy"),
      WordModel(id: UniqueId(), uk: "лікоть", ru: "локоть", pl: "łokieć"),
      WordModel(id: UniqueId(), uk: "зап'ястя", ru: "запьястье", pl: "nadgarstek"),
      WordModel(id: UniqueId(), uk: "рука", ru: "рука", pl: "ręka"),
      WordModel(id: UniqueId(), uk: "поперек", ru: "поясница", pl: "krzyż"),
      WordModel(id: UniqueId(), uk: "лодижка", ru: "лодыжка", pl: "kostka nogi"),
      WordModel(id: UniqueId(), uk: "сідниця", ru: "ягодица", pl: "pośladek"),
      WordModel(id: UniqueId(), uk: "гомілка", ru: "лытка", pl: "łydka"),
      WordModel(id: UniqueId(), uk: "п'ятка", ru: "пятка", pl: "pięta"),
      WordModel(id: UniqueId(), uk: "волосся", ru: "волосы", pl: "włosy"),
      WordModel(id: UniqueId(), uk: "шкіра", ru: "кожа", pl: "skóra"),
      WordModel(id: UniqueId(), uk: "брова", ru: "бровь", pl: "bre"),
      WordModel(id: UniqueId(), uk: "вія", ru: "ресница", pl: "rzęsa"),
      WordModel(id: UniqueId(), uk: "вухо", ru: "ухо", pl: "ucho"),
      WordModel(id: UniqueId(), uk: "ніс", ru: "нос", pl: "nos"),
      WordModel(id: UniqueId(), uk: "родимка", ru: "родинка", pl: "pieprzyk"),
      WordModel(id: UniqueId(), uk: "губа", ru: "губа", pl: "warga"),
      WordModel(id: UniqueId(), uk: "чоло", ru: "лоб", pl: "czoło"),
      WordModel(id: UniqueId(), uk: "cкроня", ru: "висок", pl: "skroń"),
      WordModel(id: UniqueId(), uk: "око", ru: "глаз", pl: "oko"),
      WordModel(id: UniqueId(), uk: "щока", ru: "щека", pl: "policzek"),
      WordModel(id: UniqueId(), uk: "ніздря", ru: "ноздря", pl: "nozdrze"),
      WordModel(id: UniqueId(), uk: "рот", ru: "рот", pl: "usta"),
      WordModel(id: UniqueId(), uk: "челюсть", ru: "челюсть", pl: "szczęka"),
      WordModel(id: UniqueId(), uk: "підборіддя", ru: "подбородок", pl: "broda"),
      WordModel(id: UniqueId(), uk: "зморшка", ru: "морщина", pl: "zmarszczka"),
      WordModel(id: UniqueId(), uk: "пори шкіри", ru: "поры кожи", pl: "por"),
      WordModel(id: UniqueId(), uk: "ластовиння", ru: "веснушки", pl: "pieg"),
      WordModel(id: UniqueId(), uk: "ямочка", ru: "ямочка", pl: "dołek"),
      WordModel(id: UniqueId(), uk: "палець безіменний", ru: "палец безымянный", pl: "palec serdeczny"),
      WordModel(id: UniqueId(), uk: "мізинець", ru: "мизинец", pl: "mały palec"),
      WordModel(id: UniqueId(), uk: "великий палець ноги", ru: "большой палец ноги", pl: "duży palec u nog"),
      WordModel(id: UniqueId(), uk: "палець ноги", ru: "палец ноги", pl: "palec u nog"),
      WordModel(id: UniqueId(), uk: "подошва cтопи", ru: "подошва стопи", pl: "podeszwa"),
      WordModel(id: UniqueId(), uk: "палець середній", ru: "палец средний", pl: "palec środkowy "),
      WordModel(id: UniqueId(), uk: "палець вказівний", ru: "палец указательный", pl: "palec wskazujący"),
      WordModel(id: UniqueId(), uk: "долонь", ru: "ладонь", pl: "dłoń"),
      WordModel(id: UniqueId(), uk: "ніготь", ru: "ноготь", pl: "paznokieć"),
      WordModel(id: UniqueId(), uk: "кутикула", ru: "кутикула", pl: "skórka"),
      WordModel(id: UniqueId(), uk: "п'ястя", ru: "пястье", pl: "kostka ręk"),
      WordModel(id: UniqueId(), uk: "великий палець руки", ru: "большой палец руки", pl: "kciuk"),
      WordModel(id: UniqueId(), uk: "кулак", ru: "кулак", pl: "pięść"),
      WordModel(id: UniqueId(), uk: "п'ята", ru: "пятка", pl: "pięta"),
      WordModel(id: UniqueId(), uk: "склепіння стопи", ru: "свод стопы", pl: "sklepienie stopy"),
      WordModel(id: UniqueId(), uk: "підйом стопи", ru: "подъем стопы", pl: "podbicie"),
      WordModel(id: UniqueId(), uk: "обличчя", ru: "лицо", pl: "twarz"),
    ], sortValue: 2),

    LessonModel(id: UniqueId(), title: "Подорож", words: [], sortValue: 3),
    LessonModel(id: UniqueId(), title: "Навчання", words: [], sortValue: 4),
    LessonModel(id: UniqueId(), title: "Політика", words: [], sortValue: 5),
    LessonModel(id: UniqueId(), title: "Top 100 слів", words: [], sortValue: 6),
  ];*/

  @override
  Future<List<LessonModel>> getLessons() {
    return Future.value(testLessons);
  }

  @override
  void removeWordFromLesson(UniqueId lessonId, UniqueId wordId) {
    var lesson = testLessons.firstWhere((element) => element.id == lessonId);

    var newCollection = lesson.words.takeExcept((wordModel) => wordModel.id == wordId);

    testLessons.remove(lesson);

    testLessons.add(lesson.copyWith(words: newCollection));

    testLessons.sort((a, b) => a.sortValue.compareTo(b.sortValue));
  }
}
