import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/i_auth_facade.dart';

import 'errors.dart';

extension FirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<String> currentUserID() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id.getOrCrash();
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get eventFeedCollection => collection('eventfeeds');

  /// Nested subcollection under a [noteCollection]'s document.
  CollectionReference get followeringCollection => collection('following');
}
