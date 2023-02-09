import 'package:bloc/bloc.dart';
import 'package:dictionary/domain/section/section_model.dart';
import 'package:dictionary/domain/section/section_types.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_page_state.dart';

part 'main_page_cubit.freezed.dart';

@injectable
class MainPageCubit extends Cubit<MainPageState> {

  MainPageCubit() : super(MainPageState.initial());

}
