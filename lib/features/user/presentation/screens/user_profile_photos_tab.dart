import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/photo_view.dart';
import 'package:vybrnt_mvp/features/user/services/database_service.dart';

class UserProfilePhotosTab extends StatefulWidget {
  final String userID;
  final String name;

  const UserProfilePhotosTab({
    Key key,
    this.userID,
    this.name,
  }) : super(key: key);
  @override
  _UserProfilePhotosTabState createState() => _UserProfilePhotosTabState();
}

class _UserProfilePhotosTabState extends State<UserProfilePhotosTab> {
  void initState() {
    super.initState();
    _setupPhotos();
  }

  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  List<Photo> _photos = [];

  _setupPhotos() async {
    List<Photo> photos = await DatabaseService.getUserPhotos(widget.userID);
    setState(() {
      _photos = photos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        top: false,
        bottom: false,
        child: RefreshIndicator(
            onRefresh: () => _setupPhotos(),
            child: Builder(builder: (BuildContext context) {
              return CustomScrollView(
                key: PageStorageKey<String>(widget.name),
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        ///no.of items in the horizontal axis
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        crossAxisCount: 2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          // This builder is called for each child.
                          // In this example, we just number each list item.
                          Photo photo = _photos[index];
                          return OpenContainer<bool>(
                              transitionType: _transitionType,
                              openBuilder:
                                  (BuildContext _, VoidCallback openContainer) {
                                return EventDetailImage(photo.imageUrl);
                              },
                              closedShape: const RoundedRectangleBorder(),
                              closedElevation: 0.0,
                              closedBuilder:
                                  (BuildContext _, VoidCallback openContainer) {
                                return PhotoView(
                                  photo: photo,
                                );
                              });
                        },
                        childCount: _photos.length,
                      ),
                    ),
                  ),
                ],
              );
            })),
      ),
    );
  }
}
