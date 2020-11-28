import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseAuth;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/authentication/domain/auth_failure.dart';
import 'package:vybrnt_mvp/features/authentication/domain/i_auth_facade.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/value_objects.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_auth.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';
import 'package:vybrnt_mvp/features/posts/infrastructure/posts/post_dtos.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/services/user_dtos.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final firebaseAuth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<UserAuth>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  //.then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      dynamic result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      //FirebaseUser signedInUser = result.user;
      User newUser = User.empty();
      final userDTO = UserDto.fromDomain(newUser.copyWith(
        userID: UniqueId.fromUniqueString(result.user.uid),
        email: emailAddress.getOrCrash(),
      ));
      await usersRef.doc(result.user.uid).set(userDTO.toJson());
      await addFirstPost(result.user);

      return right(unit);
    } on firebaseAuth.FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        print(e);
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future addFirstPost(firebaseAuth.User signedInUser) async {
    Post startingPost = Post.empty();
    String newPostID =
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
      print(e);
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
    } on firebaseAuth.FirebaseAuthException catch (e) {
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
        print(error);
      }
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = firebaseAuth.GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      dynamic result = await _firebaseAuth.signInWithCredential(authCredential);

      return _firebaseAuth.signInWithCredential(authCredential).then((r) async {
        bool userExists =
            await usersRef.doc(result.user.uid).get().then((doc) => doc.exists);
        if (!userExists) {
          User newUser = User.empty();
          final userDTO = UserDto.fromDomain(newUser.copyWith(
            userID: UniqueId.fromUniqueString(result.user.uid),
          ));
          await usersRef.doc(result.user.uid).set(userDTO.toJson());
          await addFirstPost(result.user);
        }

        return right(unit);
      });
    } on firebaseAuth.FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

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

      final firebaseAuth.AuthCredential credential =
          firebaseAuth.OAuthProvider('apple.com').credential(
        accessToken: appleCredential.authorizationCode,
        idToken: appleCredential.identityToken,
      );
      dynamic result;

      try {
        result = await _firebaseAuth.signInWithCredential(credential);
      } catch (e) {
        print(e.toString());
      }

      bool userExists =
          await usersRef.doc(result.user.uid).get().then((doc) => doc.exists);
      if (!userExists) {
        User newUser = User.empty();
        final userDTO = UserDto.fromDomain(newUser.copyWith(
          userID: UniqueId.fromUniqueString(result.user.uid),
        ));
        await usersRef.doc(result.user.uid).set(userDTO.toJson());
        await addFirstPost(result.user);
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
    } on firebaseAuth.FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    return Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }
}
