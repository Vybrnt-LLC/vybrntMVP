import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

//@lazySingleton
extension FirebaseUserDomainX on User {
  UserAuth toDomain() {
    return UserAuth(id: UniqueId.fromUniqueString(uid));
  }
}

// class FirebaseUserMapper {
//   UserAuth toDomain(User _) {
//     return _ == null
//         ? null
//         : UserAuth(
//             id: UniqueId.fromUniqueString(_.uid),
//           );
//   }
// }
