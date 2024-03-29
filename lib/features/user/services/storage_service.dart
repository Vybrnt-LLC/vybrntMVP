import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';

class StorageService {
  // static Future<String> uploadUserProfileImage(
  //     String url, File imageFile) async {
  //   String photoId = Uuid().v4();
  //   File image = await compressImage(photoId, imageFile);

  //   if (url.isNotEmpty) {
  //     // Updating user Profile image
  //     RegExp exp = RegExp(r'userProfile_(.*).jpg');
  //     photoId = exp.firstMatch(url)[1];
  //   }

  //   StorageUploadTask uploadTask = storageRef
  //       .child('images/users/userProfile_$photoId.jpg')
  //       .putFile(image);
  //   StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
  //   String downloadUrl = await storageSnap.ref.getDownloadURL();
  //   return downloadUrl;
  // }

  // static Future<String> uploadUserBannerImage(
  //     String url, File imageFile) async {
  //   String photoId = Uuid().v4();
  //   File image = await compressImage(photoId, imageFile);

  //   if (url.isNotEmpty) {
  //     // Updating user Profile image
  //     RegExp exp = RegExp(r'userProfileBanner_(.*).jpg');
  //     photoId = exp.firstMatch(url)[1];
  //   }

  //   StorageUploadTask uploadTask = storageRef
  //       .child('images/users/userProfileBanner_$photoId.jpg')
  //       .putFile(image);
  //   StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
  //   String downloadUrl = await storageSnap.ref.getDownloadURL();
  //   return downloadUrl;
  // }

  static Future<File> compressImage(String photoId, File image) async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    final File compressedImageFile =
        await FlutterImageCompress.compressAndGetFile(
            image.absolute.path, '$path/img_$photoId.jpg',
            quality: 70);
    return compressedImageFile;
  }

  // static Future<String> uploadPost(File imageFile) async {
  //   String photoId = Uuid().v4();
  //   File image = await compressImage(photoId, imageFile);
  //   StorageUploadTask uploadTask = storageRef
  //       .child('images/posts/post_$photoId.jpg')
  //       .putFile(image);
  //   StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
  //   String downloadUrl = await storageSnap.ref.getDownloadURL();
  //   return downloadUrl;

  // }

  static Future<String> uploadPhoto(File imageFile) async {
    final String photoId = Uuid().v4();
    final File image = await compressImage(photoId, imageFile);
    final StorageUploadTask uploadTask =
        storageRef.child('images/photos/photo_$photoId.jpg').putFile(image);
    final StorageTaskSnapshot storageSnap = await uploadTask.onComplete;
    final downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl.toString();
  }
}
