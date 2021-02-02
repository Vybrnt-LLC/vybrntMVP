import 'dart:io';

import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:simple_url_preview/simple_url_preview.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';

import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';

import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';

class EventDetailScreen extends StatefulWidget {
  final Event event;
  final String name;
  final bool isAdmin;

  EventDetailScreen({
    Key key,
    this.event,
    this.name,
    this.isAdmin = false,
  }) : super(key: key);
  @override
  _EventDetailScreenState createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return Scaffold(
      //appBar: AppBar(title: Text(widget.event.eventName)),
      body: SafeArea(
        top: false,
        bottom: false,
        child: BlocBuilder<EventDetailBloc, EventDetailState>(
          //bloc: BlocProvider.of<EventDetailBloc>(context),
          builder: (BuildContext context, state) {
            final shareLink = state.shareLink;
            final name = state.org.orgID.getOrCrash().isNotEmpty
                ? state.org.name
                : state.user.profileName;
            final eventName = widget.event.eventName;
            final String shareMessage =
                'Check out $name\'s event: $eventName on Vybrnt! \n$shareLink';
            return NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    actions: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.share,
                              color: Colors.white),
                          onPressed: () {
                            final RenderBox box = context.findRenderObject();
                            Share.share(shareMessage,
                                sharePositionOrigin:
                                    box.localToGlobal(Offset.zero) & box.size);
                          }),
                      currentUserID == widget.event.senderID
                          ? FocusedMenuHolder(
                              menuWidth:
                                  MediaQuery.of(context).size.width * 0.50,
                              blurSize: 5.0,
                              menuItemExtent: 45,
                              menuBoxDecoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              duration: Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset:
                                  10.0, // Offset value to show menuItem from the selected item
                              bottomOffsetHeight:
                                  80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                              menuItems: <FocusedMenuItem>[
                                FocusedMenuItem(
                                    title: Text("Report"),
                                    trailingIcon: Icon(Icons.flag),
                                    onPressed: () => TabNavigatorProvider.of(context) != null
                                        ? TabNavigatorProvider.of(context)
                                            .pushReport(context,
                                                currentUserID: currentUserID,
                                                contentID: widget.event.eventID
                                                    .getOrCrash(),
                                                contentType: 'event',
                                                ownerID: widget.event.orgID.isEmpty
                                                    ? widget.event.senderID
                                                    : widget.event.orgID,
                                                ownerType:
                                                    widget.event.orgID.isEmpty
                                                        ? 'user'
                                                        : 'org')
                                        : getIt<NavigationService>().navigateTo(
                                            Routes.report,
                                            arguments: ReportScreenArguments(
                                                currentUserID: currentUserID,
                                                contentID: widget.event.eventID
                                                    .getOrCrash(),
                                                contentType: 'event',
                                                ownerID: widget.event.orgID.isEmpty
                                                    ? widget.event.senderID
                                                    : widget.event.orgID,
                                                ownerType: widget.event.orgID.isEmpty ? 'user' : 'org'))),
                                FocusedMenuItem(
                                  title: Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  trailingIcon: Icon(Icons.delete),
                                  onPressed: () => context
                                      .bloc<EventDetailBloc>()
                                      .add(EventDetailEvent.deleteEvent(
                                          widget.event)),
                                )
                              ],
                              onPressed: () {},
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            )
                          : FocusedMenuHolder(
                              menuWidth:
                                  MediaQuery.of(context).size.width * 0.50,
                              blurSize: 5.0,
                              menuItemExtent: 45,
                              menuBoxDecoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              duration: Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset:
                                  10.0, // Offset value to show menuItem from the selected item
                              bottomOffsetHeight:
                                  80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                              menuItems: <FocusedMenuItem>[
                                FocusedMenuItem(
                                    title: Text("Report"),
                                    trailingIcon: Icon(Icons.flag),
                                    onPressed: () => TabNavigatorProvider.of(context) != null
                                        ? TabNavigatorProvider.of(context)
                                            .pushReport(context,
                                                currentUserID: currentUserID,
                                                contentID: widget.event.eventID
                                                    .getOrCrash(),
                                                contentType: 'event',
                                                ownerID: widget.event.orgID.isEmpty
                                                    ? widget.event.senderID
                                                    : widget.event.orgID,
                                                ownerType:
                                                    widget.event.orgID.isEmpty
                                                        ? 'user'
                                                        : 'org')
                                        : getIt<NavigationService>().navigateTo(
                                            Routes.report,
                                            arguments: ReportScreenArguments(
                                                currentUserID: currentUserID,
                                                contentID: widget.event.eventID
                                                    .getOrCrash(),
                                                contentType: 'event',
                                                ownerID: widget.event.orgID.isEmpty
                                                    ? widget.event.senderID
                                                    : widget.event.orgID,
                                                ownerType: widget.event.orgID.isEmpty ? 'user' : 'org'))),
                              ],
                              onPressed: () {},
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                    ],
                    backgroundColor: Colors.pink[400],
                    leading: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.pop(context)),
                    expandedHeight: 250.0,
                    floating: true,
                    forceElevated: innerBoxIsScrolled,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        //centerTitle: true,
                        //titlePadding: EdgeInsetsDirectional.only(start: 140, bottom: 16),
                        title: Container(
                          width: 200,
                          child: BorderedText(
                            strokeColor: Colors.black,
                            strokeWidth: 1.0,
                            child: Text(widget.event.eventName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        background: Material(
                          child: InkWell(
                            onTap: () {
                              var nav = Navigator.of(context);
                              nav.push<void>(_createRoute(
                                  context, widget.event.eventImageUrl));
                            },
                            child: widget.event.eventImageUrl.isEmpty
                                ? Image.asset(
                                    'assets/images/user_placeholder.png')
                                : Image(
                                    image: CachedNetworkImageProvider(
                                        widget.event.eventImageUrl),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        )),
                  ),
                  // _displayButton(user),
                ];
              },
              body: Container(
                padding: EdgeInsets.fromLTRB(35, 20, 35, 0),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 15),
                          Text(
                            'Date and Time',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Text(DateFormat.yMMMEd()
                              .add_jm()
                              .format(widget.event.startTime)),
                          Text(' - '),
                          Text(DateFormat.jm().format(widget.event.endTime))
                        ],
                      ),
                      SizedBox(height: 20),
                      widget.event.eventCaption.isNotEmpty
                          ? Row(
                              children: [
                                Icon(Icons.info_outline),
                                SizedBox(width: 15),
                                Text(
                                  'Details',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 5),
                      widget.event.eventCaption.isNotEmpty
                          ? Row(
                              children: [
                                SizedBox(width: 40),
                                SizedBox(
                                    width: 300,
                                    child: Text(widget.event.eventCaption)),
                              ],
                            )
                          : SizedBox.shrink(),
                      widget.event.eventCaption.isNotEmpty
                          ? SizedBox(height: 20)
                          : SizedBox.shrink(),
                      widget.event.eventLocation.isNotEmpty
                          ? Row(
                              children: [
                                Icon(Icons.location_searching),
                                SizedBox(width: 15),
                                Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 5),
                      widget.event.eventLocation.isNotEmpty
                          ? Row(
                              children: [
                                SizedBox(width: 40),
                                SizedBox(
                                    width: 300,
                                    child: Text(widget.event.eventLocation)),
                              ],
                            )
                          : SizedBox.shrink(),
                      widget.event.eventLocation.isNotEmpty
                          ? SizedBox(height: 20)
                          : SizedBox.shrink(),
                      widget.event.eventUrl.isNotEmpty
                          ? Row(
                              children: [
                                Icon(Icons.web),
                                SizedBox(width: 15),
                                Text(
                                  'URL',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 5),
                      widget.event.eventUrl.isNotEmpty
                          ? SimpleUrlPreview(
                              url: widget.event.eventUrl,
                              textColor: Colors.white,
                              titleLines: 2,
                              descriptionLines: 2,
                            )
                          // Row(
                          //     children: [
                          //       SizedBox(width: 40),
                          //       SizedBox(
                          //           width: 300,
                          //           child: InkWell(
                          //             child: Text(
                          //               widget.event.eventUrl,
                          //               style: TextStyle(
                          //                 color: Colors.blue,
                          //                 decoration: TextDecoration.underline,
                          //               ),
                          //             ),
                          //             onTap: () =>
                          //                 launch(widget.event.eventUrl),
                          //           )),
                          //     ],
                          //   )
                          : SizedBox.shrink(),
                      widget.event.eventUrl.isNotEmpty
                          ? SizedBox(height: 20)
                          : SizedBox.shrink(),
                      Row(
                        children: [
                          widget.event.isOrg
                              ? GestureDetector(
                                  onTap: () =>
                                      TabNavigatorProvider.of(context) != null
                                          ? TabNavigatorProvider.of(context)
                                              .pushOrgPage(context,
                                                  orgID: widget.event.orgID)
                                          : getIt<NavigationService>()
                                              .navigateTo(Routes.org,
                                                  arguments:
                                                      OrgScreenArguments(
                                                          orgID: widget
                                                              .event.orgID)),
                                  child: GFAvatar(
                                    borderRadius: BorderRadius.circular(5),
                                    shape: GFAvatarShape.square,
                                    size: 20.0,
                                    backgroundImage: state
                                            .org.profileImageUrl.isEmpty
                                        ? AssetImage(
                                            'assets/images/user_placeholder.png')
                                        : CachedNetworkImageProvider(
                                            state.org.profileImageUrl),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () =>
                                      TabNavigatorProvider.of(context) != null
                                          ? TabNavigatorProvider.of(context)
                                              .pushUserProfile(context,
                                                  userID: widget.event.senderID)
                                          : getIt<NavigationService>()
                                              .navigateTo(Routes.user,
                                                  arguments:
                                                      UserScreenArguments(
                                                          userID: widget
                                                              .event.senderID)),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: state
                                            .user.profileImageUrl.isEmpty
                                        ? AssetImage(
                                            'assets/images/user_placeholder.png')
                                        : CachedNetworkImageProvider(
                                            state.user.profileImageUrl),
                                  ),
                                ),
                          SizedBox(width: 10),
                          widget.event.isOrg
                              ? Container(
                                  width: 300,
                                  child: Text(
                                    state.org.name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : Container(
                                  width: 300,
                                  child: GestureDetector(
                                    onTap: () => TabNavigatorProvider.of(
                                                context) !=
                                            null
                                        ? TabNavigatorProvider.of(context)
                                            .pushUserProfile(context,
                                                userID: widget.event.senderID)
                                        : getIt<NavigationService>().navigateTo(
                                            Routes.user,
                                            arguments: UserScreenArguments(
                                                userID: widget.event.senderID)),
                                    child: Text(
                                      state.user.profileName,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(height: 5),
                      widget.event.isOrg
                          ? Row(
                              children: [
                                SizedBox(width: 40),
                                SizedBox(
                                    width: 300,
                                    child: Text(
                                        'Created by: ${state.user.profileName}')),
                              ],
                            )
                          : SizedBox.shrink(),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        onPressed: () => state.isRSVPed
                            ? context.bloc<EventDetailBloc>().add(
                                EventDetailEvent.removeFromRSVP(widget.event))
                            : context
                                .bloc<EventDetailBloc>()
                                .add(EventDetailEvent.addToRSVP(widget.event)),
                        child: state.isRSVPed
                            ? Text(
                                'BET',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            : Text('GOING?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                        color: state.isRSVPed ? Colors.green : Colors.blue,
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Icon(Icons.details),
                          SizedBox(width: 15),
                          Text(
                            'VIP List (${state.rsvpList.size})',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          children: state.rsvpList
                              .asList()
                              .map((user) => Container(
                                  child: ListTile(
                                      title: Text(user.profileName),
                                      leading: CircleAvatar(
                                        backgroundImage: user
                                                .profileImageUrl.isEmpty
                                            ? AssetImage(
                                                'assets/images/user_placeholder.png')
                                            : CachedNetworkImageProvider(
                                                user.profileImageUrl),
                                      ))))
                              .toList(),
                        ),
                      )
                      // Builder(builder: (BuildContext context) {
                      //   return CustomScrollView(
                      //     key: PageStorageKey<String>(widget.name),
                      //     slivers: <Widget>[
                      //       SliverPadding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         sliver: SliverFixedExtentList(
                      //           itemExtent: 100.0,
                      //           delegate: SliverChildBuilderDelegate(
                      //             (BuildContext context, int index) {
                      //               return ListTile(
                      //                   title: Text(state
                      //                       .rsvpList[index].profileName),
                      //                   leading: CircleAvatar(
                      //                     backgroundImage: state
                      //                             .rsvpList[index]
                      //                             .profileImageUrl
                      //                             .isEmpty
                      //                         ? AssetImage(
                      //                             'assets/images/user_placeholder.png')
                      //                         : CachedNetworkImageProvider(
                      //                             state.rsvpList[index]
                      //                                 .profileImageUrl),
                      //                   ));
                      //             },
                      //             childCount: state.rsvpList.size,
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   );
                      // })
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }

  _showDeleteEventDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog();
  }

  _iosBottomSheet() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text('Delete Event?'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                  child: Text('Yes, Get it Outta Here'),
                  onPressed: () => context
                      .bloc<EventDetailBloc>()
                      .add(EventDetailEvent.deleteEvent(widget.event))),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
          );
        });
  }

  _androidDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Are you sure?'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text(
                  'Yes, Get it Outta Here',
                  style: TextStyle(color: Colors.redAccent),
                ),
                onPressed: () => widget.isAdmin
                    ? context
                        .bloc<EventDetailBloc>()
                        .add(EventDetailEvent.deleteEvent(widget.event))
                    : print('cant'),
              ),
              SimpleDialogOption(
                child: Text(
                  'Cancel',
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
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
