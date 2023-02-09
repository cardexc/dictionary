part of 'main_page_cubit.dart';

@freezed
class MainPageState with _$MainPageState {
  MainPageState._();

  final List<SectionModel> sections = [
    SectionModel(
      sectionType: SectionType.dictionary,
      iconData: CupertinoIcons.settings,
      title: "dictionary".tr(),
    ),
    SectionModel(
      sectionType: SectionType.learn,
      iconData: CupertinoIcons.book,
      title: "learn".tr(),
    ),
    SectionModel(
      sectionType: SectionType.statistic,
      iconData: CupertinoIcons.bubble_left_bubble_right,
      title: "statistics".tr(),
    ),
    SectionModel(
      sectionType: SectionType.settings,
      iconData: CupertinoIcons.chart_bar,
      title: "settings".tr(),
    ),
  ];

  factory MainPageState() = _MainPageState;

  factory MainPageState.initial() => MainPageState();
}
