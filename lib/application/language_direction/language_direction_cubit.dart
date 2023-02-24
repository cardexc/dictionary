import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../domain/words/word_model.dart';
import '../../infrastructure/config/const.dart';

part 'language_direction_state.dart';

part 'language_direction_cubit.freezed.dart';

class LanguageDirectionCubit extends Cubit<LanguageDirectionState> {
  final List<WordModel> words;
  final Box box;

  LanguageDirectionCubit({
    required this.words,
    required this.box,
  }) : super(LanguageDirectionState.initial(box));

  void changeDirection(LanguageDirection newDirection) {
    emit(state.copyWith(direction: newDirection));
  }

  void changeAskLanguageDirection(bool newValue) {
    emit(state.copyWith(alwaysUseSelectedDirection: newValue));
  }

  void writeSettings() {
    if (state.alwaysUseSelectedDirection) {
      box.put(HiveConst.askLanguageDirectionKey, false);
      box.put(HiveConst.defaultLanguageDirectionKey, state.direction.stringDirection);
    }
  }
}
