import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/lesson/language_direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/words/word_model.dart';

part 'language_direction_state.dart';

part 'language_direction_cubit.freezed.dart';

class LanguageDirectionCubit extends Cubit<LanguageDirectionState> {
  final List<WordModel> words;

  LanguageDirectionCubit({required this.words}) : super(LanguageDirectionState.initial());

  void changeDirection(LanguageDirection newDirection) {
    emit(state.copyWith(direction: newDirection));
  }
}
