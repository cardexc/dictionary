import 'package:dictionary/domain/section/section_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "section_model.freezed.dart";

@freezed
abstract class SectionModel with _$SectionModel {
  const factory SectionModel({
    required String title,
    required SectionType sectionType,
    required IconData iconData,
  }) = _SectionModel;
}
