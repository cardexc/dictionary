import 'package:freezed_annotation/freezed_annotation.dart';

part "error_model.freezed.dart";

@freezed
abstract class ServerFailureException with _$ServerFailureException{
  const factory ServerFailureException.badResponse() = _BadResponse;
  const factory ServerFailureException.unknownError({String? message}) = _UnknownError;
}
