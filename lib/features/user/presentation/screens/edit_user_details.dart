import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vybrnt_mvp/features/user/application/edit_user_bloc/edit_user_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

class EditUserDetails extends StatefulWidget {
  final User user;

  const EditUserDetails({Key key, this.user}) : super(key: key);

  @override
  _EditUserDetailsState createState() => _EditUserDetailsState();
}

class _EditUserDetailsState extends State<EditUserDetails> {
  final _formKey = GlobalKey<FormState>();
  //final picker = ImagePicker();
  final snackBar = SnackBar(content: Text('Submitted!'));
  bool _isLoading = false;
  File _profileImage;
  File _bannerImage;

  Future _cropImage(File imageFile) async {
    File croppedImage = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: CropAspectRatio(
        ratioX: 1.0,
        ratioY: 1.0,
      ),
    );
    return croppedImage;
  }

  _displayProfileImage(String profileImageUrl) {
    // No new profile image
    if (_profileImage == null) {
      // No existing profile image
      if (profileImageUrl.isEmpty) {
        // Display placeholder
        return AssetImage('assets/images/user_placeholder.png');
      } else {
        // User profile image exists
        return CachedNetworkImageProvider(profileImageUrl);
      }
    } else {
      // New profile image
      return FileImage(_profileImage);
    }
  }

  _displayBannerImage(String bannerImageUrl) {
    // No new banner image
    if (_bannerImage == null) {
      // No existing banner image
      if (bannerImageUrl.isEmpty) {
        // Display placeholder
        return AssetImage('assets/images/user_placeholder.png');
      } else {
        // User banner image exists
        return CachedNetworkImageProvider(bannerImageUrl);
      }
    } else {
      // New banner image
      return FileImage(_bannerImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(child:
        BlocBuilder<EditUserBloc, EditUserState>(builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
          children: <Widget>[
            _isLoading
                ? LinearProgressIndicator(
                    backgroundColor: Colors.blue[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Column(
                          children: [
                            GFAvatar(
                              size: 60,
                              backgroundColor: Colors.grey,
                              backgroundImage: _displayProfileImage(
                                  state.user.profileImageUrl),
                              shape: GFAvatarShape.standard,
                            ),
                            FlatButton(
                              onPressed: () async {
                                // PickedFile imagePickedFile;
                                // try {
                                //   imagePickedFile = await picker.getImage(
                                //       source: ImageSource.gallery);
                                // } catch (e) {
                                //   print(e);
                                // }
                                FilePickerResult result = await FilePicker
                                    .platform
                                    .pickFiles(type: FileType.image);

                                if (result != null) {
                                  File file = File(result.files.single.path);

                                  File imageFile = await _cropImage(file);

                                  if (imageFile != null) {
                                    setState(() {
                                      _profileImage = imageFile;
                                    });
                                  }
                                }
                                context.bloc<EditUserBloc>().add(
                                    EditUserEvent.userProfileImageChanged(
                                        state.user.profileImageUrl,
                                        _profileImage));
                              },
                              child: Text(
                                'Change Profile Image',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GFAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: _displayBannerImage(
                                  state.user.bannerImageUrl),
                              shape: GFAvatarShape.standard,
                              size: 60,
                            ),
                            FlatButton(
                              onPressed: () async {
                                // PickedFile imagePickedFile;
                                // try {
                                //   imagePickedFile = await picker.getImage(
                                //       source: ImageSource.gallery);
                                // } catch (e) {
                                //   print(e);
                                // }
                                FilePickerResult result = await FilePicker
                                    .platform
                                    .pickFiles(type: FileType.image);

                                if (result != null) {
                                  File file = File(result.files.single.path);

                                  File imageFile = await _cropImage(file);
                                  if (imageFile != null) {
                                    setState(() {
                                      _bannerImage = imageFile;
                                    });
                                  }
                                }
                                context.bloc<EditUserBloc>().add(
                                    EditUserEvent.userBannerImageChanged(
                                        state.user.bannerImageUrl,
                                        _bannerImage));
                              },
                              child: Text(
                                'Change Banner Image',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextFormField(
                      initialValue: widget.user.profileName,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          size: 30.0,
                        ),
                        labelText: 'Name',
                      ),
                      validator: (input) => input.trim().length < 1
                          ? 'Please enter a valid name'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditUserBloc>()
                          .add(EditUserEvent.nameChanged(input)),
                    ),
                    TextFormField(
                      minLines: 2,
                      maxLines: null,
                      maxLength: 500,
                      initialValue: widget.user.bio,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.book,
                          size: 30.0,
                        ),
                        labelText: 'Bio',
                      ),
                      validator: (input) => input.trim().length > 500
                          ? 'Please enter your bio'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditUserBloc>()
                          .add(EditUserEvent.bioChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.user.major,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          size: 30.0,
                        ),
                        labelText: 'Major',
                      ),
                      validator: (input) => input.trim().length < 1
                          ? 'Please enter a major'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditUserBloc>()
                          .add(EditUserEvent.majorChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.user.email,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          size: 30.0,
                        ),
                        labelText: 'Email',
                      ),
                      validator: (input) => input.trim().length < 1
                          ? 'Please enter a valid email'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditUserBloc>()
                          .add(EditUserEvent.emailChanged(input)),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      height: 40.0,
                      width: 250.0,
                      child: FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate() && !_isLoading) {
                            _formKey.currentState.save();
                          }
                          context
                              .bloc<EditUserBloc>()
                              .add(EditUserEvent.saveUser());

                          Scaffold.of(context).showSnackBar(snackBar);
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text(
                          'Save Profile',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }));
  }
}
