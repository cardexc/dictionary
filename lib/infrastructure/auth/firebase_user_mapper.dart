import 'package:firebase_auth/firebase_auth.dart' as FB;

import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on FB.User {
  User toDomain() => User(uniqueId: UniqueId.fromUniqueString(uid), name: displayName ?? email ?? "");
}
