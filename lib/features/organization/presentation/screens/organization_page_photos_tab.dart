import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/widgets/org_photo_view.dart';
import 'package:vybrnt_mvp/features/organization/services/org_database_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';

class OrganizationPagePhotosTab extends StatefulWidget {
  final String name;

  final Organization org;

  const OrganizationPagePhotosTab({
    Key key,
    this.name,
    this.org,
  }) : super(key: key);
  @override
  _OrganizationPagePhotosTabState createState() =>
      _OrganizationPagePhotosTabState();
}

class _OrganizationPagePhotosTabState extends State<OrganizationPagePhotosTab> {
  void initState() {
    super.initState();
    _setupPhotos();
  }

  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  List<Photo> _photos = [];

  _setupPhotos() async {
    List<Photo> photos = await OrganizationDatabaseService.getOrgPhotos(
        widget.org.orgID.getOrCrash());
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
            child: Builder(
                // This Builder is needed to provide a BuildContext that is "inside"
                // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                // find the NestedScrollView.
                builder: (BuildContext context) {
              return //SizedBox(),
                  // child: RefreshIndicator(
                  //   onRefresh: () => _setupPosts(),
                  //child: //Builder(
                  //itemCount: _posts.length,
                  //builder: (BuildContext context, int index) {
                  //Post post = _posts[index];
                  //   FutureBuilder(
                  // future: DatabaseService.getUserWithID(widget.userID),
                  // builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //   if (!snapshot.hasData) {
                  //     return SizedBox.shrink();
                  //   }
                  CustomScrollView(
                // The "controller" and "primary" members should be left
                // unset, so that the NestedScrollView can control this
                // inner scroll view.
                // If the "controller" property is set, then this scroll
                // view will not be associated with the NestedScrollView.
                // The PageStorageKey should be unique to this ScrollView;
                // it allows the list to remember its scroll position when
                // the tab view is not on the screen.
                key: PageStorageKey<String>(widget.name),
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    // In this example, the inner scroll view has
                    // fixed-height list items, hence the use of
                    // SliverFixedExtentList. However, one could use any
                    // sliver widget here, e.g. SliverList or SliverGrid.
                    sliver: SliverGrid(
                      // The items in this example are fixed to 48 pixels
                      // high. This matches the Material Design spec for
                      // ListTile widgets.
                      //itemExtent: 300.0,

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
                                return OrgPhotoView(
                                  //currentUserID: widget.userID,
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

Route _createRoute(BuildContext parentContext, String image) {
  return PageRouteBuilder<void>(
    pageBuilder: (context, animation, secondaryAnimation) {
      return EventDetailImage(image);
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var rectAnimation = _createTween(parentContext)
          .chain(CurveTween(curve: Curves.ease))
          .animate(animation);

      return Stack(
        children: [
          PositionedTransition(rect: rectAnimation, child: child),
        ],
      );
    },
  );
}

Tween<RelativeRect> _createTween(BuildContext context) {
  var windowSize = MediaQuery.of(context).size;
  var box = context.findRenderObject() as RenderBox;
  var rect = box.localToGlobal(Offset.zero) & box.size;
  var relativeRect = RelativeRect.fromSize(rect, windowSize);

  return RelativeRectTween(
    begin: relativeRect,
    end: RelativeRect.fill,
  );
}
