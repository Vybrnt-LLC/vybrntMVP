import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';

import '../../../../socicon_icons.dart';

class EditOrgDetails extends StatefulWidget {
  final EditOrgState state;
  final Organization org;
  final String createOrEdit;

  const EditOrgDetails(
      {Key key, this.state, this.createOrEdit = 'Edit', this.org})
      : super(key: key);

  @override
  _EditOrgDetailsState createState() => _EditOrgDetailsState();
}

class _EditOrgDetailsState extends State<EditOrgDetails> {
  final _formKey = GlobalKey<FormState>();
  //final picker = ImagePicker();

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
    return Container(
      child: GestureDetector(
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
              padding: EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
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
                                  context.bloc<EditOrgBloc>().add(
                                      EditOrgEvent.orgProfileImageChanged(
                                          widget.state.org.profileImageUrl,
                                          _profileImage));
                                }
                              },
                              child: GFAvatar(
                                size: 90,
                                backgroundColor: Colors.grey,
                                backgroundImage: _displayProfileImage(
                                    widget.state.org.profileImageUrl),
                                shape: GFAvatarShape.standard,
                              ),
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
                                  context.bloc<EditOrgBloc>().add(
                                      EditOrgEvent.orgProfileImageChanged(
                                          widget.state.org.profileImageUrl,
                                          _profileImage));
                                }
                              },
                              child: Text(
                                'Change Profile Pic',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
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
                                  context.bloc<EditOrgBloc>().add(
                                      EditOrgEvent.orgBannerImageChanged(
                                          widget.state.org.bannerImageUrl,
                                          _bannerImage));
                                }
                              },
                              child: GFAvatar(
                                backgroundColor: Colors.grey,
                                backgroundImage: _displayBannerImage(
                                    widget.state.org.bannerImageUrl),
                                shape: GFAvatarShape.standard,
                                size: 90,
                              ),
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
                                  context.bloc<EditOrgBloc>().add(
                                      EditOrgEvent.orgBannerImageChanged(
                                          widget.state.org.bannerImageUrl,
                                          _bannerImage));
                                }
                              },
                              child: Text(
                                'Change Banner',
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
                      initialValue: widget.state.org.name.isEmpty
                          ? widget.org.name
                          : widget.state.org.name,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          size: 30.0,
                        ),
                        labelText: 'Name*',
                      ),
                      validator: (input) => input.trim().length < 1
                          ? 'Please enter a valid name'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.nameChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.abbv.isEmpty
                          ? widget.org.abbv
                          : widget.state.org.abbv,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.short_text,
                          size: 30.0,
                        ),
                        labelText: 'Abbreviation*',
                      ),
                      validator: (input) => input.trim().length > 10
                          ? 'Please enter a abbreviation less than 10 characters'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.abbvChanged(input)),
                    ),
                    widget.createOrEdit == "Create"
                        ? TextFormField(
                            style: TextStyle(fontSize: 18.0),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person_pin,
                                size: 30.0,
                              ),
                              labelText: 'Your Position Title*',
                            ),
                            validator: (input) => input.trim().length < 1
                                ? 'Please enter a valid position title'
                                : null,
                            onChanged: (input) => context
                                .bloc<EditOrgBloc>()
                                .add(EditOrgEvent.positionChanged(input)),
                          )
                        : SizedBox.shrink(),
                    TextFormField(
                      minLines: 2,
                      maxLines: null,
                      maxLength: 500,
                      initialValue: widget.state.org.missionStatement.isEmpty
                          ? widget.org.missionStatement
                          : widget.state.org.missionStatement,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.book,
                          size: 30.0,
                        ),
                        labelText: 'Mission',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.missionStatementChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.org.adminTitle,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.supervisor_account,
                          size: 30.0,
                        ),
                        labelText: 'Admin Title',
                      ),
                      validator: (input) => input.trim().length < 0
                          ? 'Please enter an admin title'
                          : null,
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.adminTitleChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.email.isEmpty
                          ? widget.org.email
                          : widget.state.org.email,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          size: 30.0,
                        ),
                        labelText: 'Email',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.emailChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.officeLocation.isEmpty
                          ? widget.org.officeLocation
                          : widget.state.org.officeLocation,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.location_on,
                          size: 30.0,
                        ),
                        labelText: 'Office Location',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.officeLocationChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.instagramURL.isEmpty
                          ? widget.org.instagramURL
                          : widget.state.org.instagramURL,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Socicon.instagram,
                          size: 30.0,
                        ),
                        labelText: 'Instagram URL',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.instagramURLChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.twitterURL.isEmpty
                          ? widget.org.twitterURL
                          : widget.state.org.twitterURL,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Socicon.twitter,
                          size: 30.0,
                        ),
                        labelText: 'Twitter URL',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.twitterURLChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.linkedInURL.isEmpty
                          ? widget.org.linkedInURL
                          : widget.state.org.linkedInURL,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Socicon.linkedin,
                          size: 30.0,
                        ),
                        labelText: 'LinkedIn URL',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.linkedInURLChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.facebookURL.isEmpty
                          ? widget.org.facebookURL
                          : widget.state.org.facebookURL,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Socicon.facebook,
                          size: 30.0,
                        ),
                        labelText: 'Facebook URL',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.officeLocationChanged(input)),
                    ),
                    TextFormField(
                      initialValue: widget.state.org.websiteURL.isEmpty
                          ? widget.org.websiteURL
                          : widget.state.org.websiteURL,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.web,
                          size: 30.0,
                        ),
                        labelText: 'Website URL',
                      ),
                      onChanged: (input) => context
                          .bloc<EditOrgBloc>()
                          .add(EditOrgEvent.websiteURLChanged(input)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
