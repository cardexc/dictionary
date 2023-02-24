import 'package:freezed_annotation/freezed_annotation.dart';

part "value_retrieve_failure.freezed.dart";

@freezed
abstract class ValueRetrieveFailure with _$ValueRetrieveFailure {
  const factory ValueRetrieveFailure.unexpectedError() = _UnexpectedError;
}
