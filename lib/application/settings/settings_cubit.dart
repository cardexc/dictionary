import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/auth/logged_through.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../infrastructure/config/const.dart';
import '../auth/auth_bloc.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final Box box;
  final AuthBloc authBloc;

  SettingsCubit(this.box, this.authBloc) : super(SettingsState.initial(box)) {
    if (authBloc.userOption.isSome()) {
      emit(state.copyWith(isAuthed: true, userName: authBloc.userOption.getOrElse(() => User.empty()).name));
    }
  }

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
