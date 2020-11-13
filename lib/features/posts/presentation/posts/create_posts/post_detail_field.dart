import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vybrnt_mvp/features/posts/application/create_post/create_post_form_bloc.dart';

class PostDetailField extends StatefulWidget {
  const PostDetailField({Key key}) : super(key: key);
  @override
  _PostDetailFieldState createState() => _PostDetailFieldState();
}

class _PostDetailFieldState extends State<PostDetailField> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autovalidate = false;
  File _image;
  //final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocBuilder<CreatePostFormBloc, CreatePostFormState>(
        builder: (context, state) {
      return Form(
        autovalidateMode:
            _autovalidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        key: _formKey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              key: Key('titleField'),
              initialValue: state.post.postHeader.getOrCrash(),
              decoration: const InputDecoration(
                  labelText: '*Title', hintText: 'General Body Meeting...'),
              validator: _validateTitle,
              onChanged: (String value) {
                context
                    .bloc<CreatePostFormBloc>()
                    .add(CreatePostFormEvent.headerChanged(value));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              initialValue: state.post.postBody.getOrCrash(),
              minLines: 2,
              maxLines: null,
              decoration: const InputDecoration(
                labelText: '*Description',
              ),
              onChanged: (String value) {
                context
                    .bloc<CreatePostFormBloc>()
                    .add(CreatePostFormEvent.postBodyChanged(value));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              initialValue: state.post.postURL.getOrCrash(),
              decoration: const InputDecoration(
                labelText: 'URL',
                hintText: 'Must start with https://',
              ),
              enabled: true,
              onChanged: (String value) {
                context
                    .bloc<CreatePostFormBloc>()
                    .add(CreatePostFormEvent.postURLChanged(value));
              },
            ),
          ),
          commentableAndrepostable(context, state.post.repostable.getOrCrash(),
              state.post.commentable.getOrCrash()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add Image"),
              Switch(
                  value: state.isImageToggled,
                  onChanged: (value) {
                    context
                        .bloc<CreatePostFormBloc>()
                        .add(CreatePostFormEvent.toggleImage(!value));
                  }),
            ],
          ),
          state.isImageToggled
              ? GestureDetector(
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

                      ))
              : SizedBox.shrink()
        ]),
      );
    });
  }

  String _validateTitle(String value) {
    if (value.isEmpty) {
      return 'Header is required.';
    }
    return null;
  }

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
                  }),
              CupertinoActionSheetAction(
                  child: Text('Choose From Gallery'),
                  onPressed: () {
                    _handleImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  }),
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

      File imageFile = await _cropImage(file);
      setState(() {
        _image = imageFile;
        context
            .bloc<CreatePostFormBloc>()
            .add(CreatePostFormEvent.imageURLChanged(File(imageFile.path)));
        context
            .bloc<CreatePostFormBloc>()
            .add(CreatePostFormEvent.imageURLChanged((imageFile)));
      });
    }
  }

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

  Widget commentableAndrepostable(
      BuildContext context, bool repostable, bool commentable) {
    return Column(children: [
      Text("Allow users to share post?"),
      Checkbox(
          onChanged: (bool value) {
            setState(() {
              context
                  .bloc<CreatePostFormBloc>()
                  .add(CreatePostFormEvent.toggleRepostable(value));
            });
          },
          value: repostable),
      Text("Allow users to comment on post?"),
      Checkbox(
          onChanged: (bool value) {
            setState(() {
              context
                  .bloc<CreatePostFormBloc>()
                  .add(CreatePostFormEvent.toggleCommentable(value));
            });
          },
          value: commentable),
    ]);
  }
}
