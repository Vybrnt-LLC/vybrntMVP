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
  final TextEditingController _descriptionController = TextEditingController();
  String _description = '';
  bool _isLoading = false;
  //final picker = ImagePicker();
  final errorSnackBar = const SnackBar(content: Text('Need to add an image'));
  final savedSnackBar = const SnackBar(content: Text('Saved!'));
  Future<Widget> _showSelectImageDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog();
  }

  Future<Widget> _iosBottomSheet() {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            title: const Text('Add Photo'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () {
                  _handleImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
                child: const Text('Take Photo'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  _handleImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
                child: const Text('Choose From Gallery'),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          );
        });
  }

  Future<Widget> _androidDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Add Photo'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  _handleImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
                child: const Text('Take Photo'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _handleImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
                child: const Text('Choose From Gallery'),
              ),
              SimpleDialogOption(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.redAccent),
                ),
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
    final FilePickerResult result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      final File file = File(result.files.single.path);

      if (file != null) {
        final File imageFile = await _cropImage(file);
        setState(() {
          _image = imageFile;
        });
      }
    }
  }

  Future<File> _cropImage(File imageFile) async {
    final File croppedImage = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(
        ratioX: 1.0,
        ratioY: 1.0,
      ),
    );
    return croppedImage;
  }

  Future<void> _submit() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      // Create Photo
      String imageUrl;
      if (_image != null) {
        imageUrl = await StorageService.uploadPhoto(_image);
      }
      final Photo photo = Photo(
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
          title: const Text('Add a Photo'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add),
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
                  if (_isLoading)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: LinearProgressIndicator(
                          backgroundColor: Colors.blue[200],
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.blue)),
                    )
                  else
                    const SizedBox.shrink(),
                  GestureDetector(
                      onTap: _showSelectImageDialog,
                      child: Container(
                          height: width,
                          width: width,
                          color: Colors.grey[400],
                          child: _image == null
                              ? const Icon(
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
