import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';

class PhotoView extends StatefulWidget {
  final Photo photo;

  const PhotoView({
    Key key,
    this.photo,
  }) : super(key: key);

  @override
  _PhotoViewState createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
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
