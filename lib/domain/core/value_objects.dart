import 'package:dartz/dartz.dart';
import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part "value_objects.g.dart";

@embedded
class UniqueId {
  final String value;

  factory UniqueId() {
    return UniqueId._(
      const Uuid().v1(),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(uniqueId);
  }

  const UniqueId._(this.value);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is UniqueId && other.value == value);
  }

  @override
  int get hashCode => value.hashCode;
}
