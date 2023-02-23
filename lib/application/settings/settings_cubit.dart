import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../infrastructure/config/const.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final Box box;

  SettingsCubit(this.box) : super(SettingsState.initial(box));

  void changeSettingBool(String targetKey, bool newState) {

    box.put(targetKey, newState);

    var newMap = state.boolMap.map((key, value) => MapEntry(key, key == targetKey ? newState : value));

    emit(state.copyWith(boolMap: newMap));
  }

  void languageDirectionShowDialog() {
    emit(state.copyWith(languageChooseDialogShown: state.languageChooseDialogShown + 1));
  }

  void onLanguageDirectionChoose(LanguageDirection languageDirection) {
    box.put(HiveConst.defaultLanguageDirectionKey, languageDirection.stringDirection);
    emit(state.copyWith(defaultLanguageDirection: languageDirection.stringDirection));
  }
}
