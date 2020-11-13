import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';

class OrgPhotoView extends StatefulWidget {
  final Photo photo;

  const OrgPhotoView({
    Key key,
    this.photo,
  }) : super(key: key);

  @override
  _OrgPhotoViewState createState() => _OrgPhotoViewState();
}

class _OrgPhotoViewState extends State<OrgPhotoView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(widget.photo.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
