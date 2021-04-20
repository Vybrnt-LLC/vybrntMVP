import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/authentication/domain/auth_failure.dart';
import 'package:vybrnt_mvp/features/authentication/domain/i_auth_facade.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_auth.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/value_objects.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/post_dtos.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';

import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  bool isRegistering = false;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<UserAuth>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  bool isUserRegistering() {
    return isRegistering;
  }

  //.then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      //FirebaseUser signedInUser = result.user;
      // ignore: prefer_final_locals
      User newUser = User.empty();
      final userDTO = UserDto.fromDomain(newUser.copyWith(
        userID: UniqueId.fromUniqueString(result.user.uid),
        email: emailAddress.getOrCrash(),
      ));
      await usersRef.doc(result.user.uid).set(userDTO.toJson());
      await addVybrntToFollowList(result.user.uid);
      await addFirstPost(result.user);

      return right(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        debugPrint(e.toString());
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future addFirstPost(firebase_auth.User signedInUser) async {
    // ignore: prefer_final_locals
    Post startingPost = Post.empty();
    final String newPostID =
        feedsRef.doc(signedInUser.uid).collection('userFeed').doc().id;
    try {
      final postDTO = PostDTO.fromDomain(startingPost.copyWith(
        postID: PostID(newPostID),
        senderID: SenderID('LHpaJopoy0Tgh1aNB5PjAqzf8X73'),
        orgID: OrgID('cec10340-090e-11eb-a5dc-1d0e34e32b97'),
        postBody: PostBody(
            'Thank you for trying out our platform! Hope we can make it better together. To make a page for your organization, click on the + button at the bottom right corner and add your team members as admins. No need to create another accounnt. Make sure to report bugs and provide feedback and remember to have fun everyone!!!😁'),
        postHeader: PostHeader('WELCOME TO VYBRNT!!'),
      ));
      await feedsRef
          .doc(signedInUser.uid)
          .collection('userFeed')
          .doc(postDTO.postID)
          .set(postDTO.toJson());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);

      return right(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      GoogleSignInAccount googleUser;

      try {
        googleUser = await _googleSignIn.signIn();
      } catch (error) {
        debugPrint(error.toString());
      }
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = firebase_auth.GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      final result = await _firebaseAuth.signInWithCredential(authCredential);

      return _firebaseAuth.signInWithCredential(authCredential).then((r) async {
        final userExists =
            await usersRef.doc(result.user.uid).get().then((doc) => doc.exists);
        if (!userExists) {
          isRegistering = true;
          // ignore: prefer_final_locals
          User newUser = User.empty();
          final userDTO = UserDto.fromDomain(newUser.copyWith(
            userID: UniqueId.fromUniqueString(result.user.uid),
          ));
          await usersRef.doc(result.user.uid).set(userDTO.toJson());
          await addVybrntToFollowList(result.user.uid);
          await addFirstPost(result.user);
        } else {
          isRegistering = false;
        }

        return right(unit);
      });
    } on firebase_auth.FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        // webAuthenticationOptions: WebAuthenticationOptions(
        //   clientId: 'com.example.vybrntsignin',
        //   redirectUri: Uri.parse(
        //     'https://vybrnt-release-d73d5.firebaseapp.com/__/auth/handler',
        //   ),
        // ),
        // nonce: 'example-nonce',
        // state: 'example-state',
      );

      if (appleCredential == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final firebase_auth.AuthCredential credential =
          firebase_auth.OAuthProvider('apple.com').credential(
        accessToken: appleCredential.authorizationCode,
        idToken: appleCredential.identityToken,
      );
      firebase_auth.UserCredential result;

      try {
        result = await _firebaseAuth.signInWithCredential(credential);
      } catch (e) {
        debugPrint(e.toString());
      }

      final userExists =
          await usersRef.doc(result.user.uid).get().then((doc) => doc.exists);
      if (!userExists) {
        isRegistering = true;
        // ignore: prefer_final_locals
        User newUser = User.empty();
        final userDTO = UserDto.fromDomain(newUser.copyWith(
          userID: UniqueId.fromUniqueString(result.user.uid),
        ));
        await usersRef.doc(result.user.uid).set(userDTO.toJson());
        await addVybrntToFollowList(result.user.uid);
        await addFirstPost(result.user);
      } else {
        isRegistering = false;
      }

      return right(unit);

      // FirebaseUser user = await FirebaseAuthOAuth()
      //     .openSignInFlow("apple.com", ["email"], {"locale": "en"});
      // if (user == null) {
      //   return left(const AuthFailure.cancelledByUser());
      // }

      // bool userExists =
      //     await usersRef.document(user.uid).get().then((doc) => doc.exists);
      // if (!userExists) {
      //   User newUser = User.empty();
      //   final userDTO = UserDto.fromDomain(newUser.copyWith(
      //     userID: UniqueId.fromUniqueString(user.uid),
      //   ));
      //   await usersRef.document(user.uid).setData(userDTO.toJson());
      // }

      //   return right(unit);
    } on firebase_auth.FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    return Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotMyPassword(
      {EmailAddress emailAddress}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(
          email: emailAddress.getOrCrash());
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}

Future addVybrntToFollowList(String currentUserID) async {
  const orgID = 'cec10340-090e-11eb-a5dc-1d0e34e32b97';
  followingRef.doc(currentUserID).collection('orgFollowing').doc(orgID).set({
    'abbv': 'Vybrnt',
    'name': 'Vybrnt',
    'profileImageUrl':
        'https://firebasestorage.googleapis.com/v0/b/vybrnt-production-release.appspot.com/o/images%2Forgs%2ForgProfile_c320f73c-3634-4c35-b47f-9e289ae6750c.jpg?alt=media&token=78ade707-7cb2-4d28-86e5-6c3dff579c21',
    'isToggled': true,
    'notify': true,
  });
  // Add current user to user's followers collection
  followersRef
      .doc(orgID)
      .collection('orgFollowers')
      .doc(currentUserID)
      .set({'isToggled': true, 'notify': true});

  //final docs = usersRef.where('username', isEqualTo: 'JSakyi').get();
}
