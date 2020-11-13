import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/features/organization/services/org_database_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';
import 'package:vybrnt_mvp/features/user/services/database_service.dart';

import '../../../authentication/domain/models/user_data_model.dart';
import '../../services/storage_service.dart';

class CreatePhotoScreen extends StatefulWidget {
  final String id;
  final bool isOrg;

  const CreatePhotoScreen({Key key, this.id, this.isOrg}) : super(key: key);
  @override
  _CreatePhotoScreenState createState() => _CreatePhotoScreenState();
}

class _CreatePhotoScreenState extends State<CreatePhotoScreen> {
  File _image;
  TextEditingController _descriptionController = TextEditingController();
  String _description = '';
  bool _isLoading = false;
  //final picker = ImagePicker();
  final errorSnackBar = SnackBar(content: Text('Need to add an image'));
  final savedSnackBar = SnackBar(content: Text('Saved!'));
  _showSelectImageDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog();
  }

  _iosBottomSheet() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            title: Text('Add Photo'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Take Photo'),
                onPressed: () {
                  _handleImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
              CupertinoActionSheetAction(
                child: Text('Choose From Gallery'),
                onPressed: () {
                  _handleImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          );
        });
  }

  _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('Add Photo'),
            children: <Widget>[
              SimpleDialogOption(
                  child: Text('Take Photo'),
                  onPressed: () {
                    _handleImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  }),
              SimpleDialogOption(
                  child: Text('Choose From Gallery'),
                  onPressed: () {
                    _handleImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  }),
              SimpleDialogOption(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.redAccent),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }

  Future _handleImage(ImageSource source) async {
    //Navigator.pop(context);
    // PickedFile imagePickedFile;
    // try {
    //   imagePickedFile = await picker.getImage(source: source);
    // } catch (e) {
    //   print(e);
    // }
    FilePickerResult result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      File file = File(result.files.single.path);

      if (file != null) {
        File imageFile = await _cropImage(file);
        setState(() {
          _image = imageFile;
        });
      }
    }
  }

  _cropImage(File imageFile) async {
    File croppedImage = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: CropAspectRatio(
        ratioX: 1.0,
        ratioY: 1.0,
      ),
    );
    return croppedImage;
  }

  _submit() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      // Create Photo
      String imageUrl;
      if (_image != null) {
        imageUrl = await StorageService.uploadPhoto(_image);
      }
      Photo photo = Photo(
        imageUrl: imageUrl,
        description: _description,
        likes: {},
        senderID: Provider.of<UserData>(context, listen: false).currentUserID,
        time: Timestamp.fromDate(DateTime.now()),
      );

      if (widget.isOrg) {
        OrganizationDatabaseService.createPhoto(photo, widget.id);
      } else {
        DatabaseService.createPhoto(photo);
      }

      // Reser Data
      _descriptionController.clear();

      Scaffold.of(context).showSnackBar(savedSnackBar);

      setState(() {
        _description = '';
        _image = null;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Add a Photo'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add),
                onPressed: _image == null
                    ? () => Scaffold.of(context).showSnackBar(errorSnackBar)
                    : _submit)
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              height: height,
              child: Column(
                children: <Widget>[
                  _isLoading
                      ? Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: LinearProgressIndicator(
                              backgroundColor: Colors.blue[200],
                              valueColor: AlwaysStoppedAnimation(Colors.blue)),
                        )
                      : SizedBox.shrink(),
                  GestureDetector(
                      onTap: _showSelectImageDialog,
                      child: Container(
                          height: width,
                          width: width,
                          color: Colors.grey[400],
                          child: _image == null
                              ? Icon(
                                  Icons.add_a_photo,
                                  size: 100,
                                  color: Colors.white70,
                                )
                              : Image(
                                  image: FileImage(_image),
                                  fit: BoxFit.cover) // add file function

                          )),
                  // Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 30.0),
                  //     child: TextField(
                  //       controller: _descriptionController,
                  //       style: TextStyle(fontSize: 18.0),
                  //       decoration: InputDecoration(
                  //         labelText: 'Description',
                  //       ),
                  //       onChanged: (input) => _description = input,
                  //     )),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
