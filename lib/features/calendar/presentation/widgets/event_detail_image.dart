import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventDetailImage extends StatelessWidget {
  final String eventImageUrl;

  EventDetailImage(this.eventImageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Material(
          child: GestureDetector(
            onVerticalDragDown: (DragDownDetails down) =>
                Navigator.of(context).pop(),
            // onLongPress: () => Navigator.of(context).pop(),
            // onTap: () => Navigator.of(context).pop(),
            child: AspectRatio(
                aspectRatio: 1,
                child: Image(
                  image: CachedNetworkImageProvider(eventImageUrl),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
