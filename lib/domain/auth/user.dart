import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part "user.freezed.dart";

@freezed
abstract class User with _$User {
  const factory User({required UniqueId uniqueId, required String name}) = _User;

  factory User.empty() => _User(uniqueId: UniqueId(), name: "");


}
