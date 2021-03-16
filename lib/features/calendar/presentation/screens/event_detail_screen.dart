import 'package:auto_size_text/auto_size_text.dart';
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

  const EventDetailScreen({
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
                "Check out $name's event: $eventName on Vybrnt! \n$shareLink";
            return NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    actions: <Widget>[
                      IconButton(
                          icon: const FaIcon(FontAwesomeIcons.share,
                              color: Colors.white),
                          onPressed: () {
                            final RenderBox box =
                                context.findRenderObject() as RenderBox;
                            Share.share(shareMessage,
                                sharePositionOrigin:
                                    box.localToGlobal(Offset.zero) & box.size);
                          }),
                      if (currentUserID == widget.event.senderID)
                        FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          duration: const Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                                title: const Text("Report"),
                                trailingIcon: const Icon(Icons.flag),
                                onPressed: () => TabNavigatorProvider.of(context) != null
                                    ? TabNavigatorProvider.of(context).pushReport(
                                        context,
                                        currentUserID: currentUserID,
                                        contentID:
                                            widget.event.eventID.getOrCrash(),
                                        contentType: 'event',
                                        ownerID: widget.event.orgID.isEmpty
                                            ? widget.event.senderID
                                            : widget.event.orgID,
                                        ownerType: widget.event.orgID.isEmpty
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
                                            ownerType:
                                                widget.event.orgID.isEmpty
                                                    ? 'user'
                                                    : 'org'))),
                            FocusedMenuItem(
                              title: const Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                              trailingIcon: const Icon(Icons.delete),
                              onPressed: () => context
                                  .bloc<EventDetailBloc>()
                                  .add(EventDetailEvent.deleteEvent(
                                      widget.event)),
                            )
                          ],
                          onPressed: () {},
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        )
                      else
                        FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          duration: const Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                                title: const Text("Report"),
                                trailingIcon: const Icon(Icons.flag),
                                onPressed: () => TabNavigatorProvider.of(context) != null
                                    ? TabNavigatorProvider.of(context).pushReport(
                                        context,
                                        currentUserID: currentUserID,
                                        contentID:
                                            widget.event.eventID.getOrCrash(),
                                        contentType: 'event',
                                        ownerID: widget.event.orgID.isEmpty
                                            ? widget.event.senderID
                                            : widget.event.orgID,
                                        ownerType: widget.event.orgID.isEmpty
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
                                            ownerType:
                                                widget.event.orgID.isEmpty
                                                    ? 'user'
                                                    : 'org'))),
                          ],
                          onPressed: () {},
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                    ],
                    backgroundColor: Colors.pink[400],
                    leading: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.pop(context)),
                    expandedHeight: 250.0,
                    floating: true,
                    forceElevated: innerBoxIsScrolled,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        titlePadding: const EdgeInsetsDirectional.only(
                            start: 40, bottom: 12, end: 80),
                        title: Container(
                          width: 200,
                          height: 35,
                          child: AutoSizeText(widget.event.eventName,
                              maxLines: 2,
                              style: Theme.of(context)
                                  .appBarTheme
                                  .textTheme
                                  .headline1),
                        ),
                        background: Material(
                          child: InkWell(
                            onTap: () {
                              final nav = Navigator.of(context);
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
                padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(Icons.access_time),
                          SizedBox(width: 15),
                          Text(
                            'Date and Time',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const SizedBox(width: 40),
                          Text(DateFormat.yMMMEd()
                              .add_jm()
                              .format(widget.event.startTime)),
                          const Text(' - '),
                          Text(DateFormat.jm().format(widget.event.endTime))
                        ],
                      ),
                      const SizedBox(height: 20),
                      if (widget.event.eventCaption.isNotEmpty)
                        Row(
                          children: const [
                            Icon(Icons.info_outline),
                            SizedBox(width: 15),
                            Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      const SizedBox(height: 5),
                      if (widget.event.eventCaption.isNotEmpty)
                        Row(
                          children: [
                            const SizedBox(width: 40),
                            SizedBox(
                                width: 300,
                                child: Text(widget.event.eventCaption)),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      if (widget.event.eventCaption.isNotEmpty)
                        const SizedBox(height: 20)
                      else
                        const SizedBox.shrink(),
                      if (widget.event.eventLocation.isNotEmpty)
                        Row(
                          children: const [
                            Icon(Icons.location_searching),
                            SizedBox(width: 15),
                            Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      const SizedBox(height: 5),
                      if (widget.event.eventLocation.isNotEmpty)
                        Row(
                          children: [
                            const SizedBox(width: 40),
                            SizedBox(
                                width: 300,
                                child: Text(widget.event.eventLocation)),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      if (widget.event.eventLocation.isNotEmpty)
                        const SizedBox(height: 20)
                      else
                        const SizedBox.shrink(),
                      if (widget.event.eventUrl.isNotEmpty)
                        Row(
                          children: const [
                            Icon(Icons.web),
                            SizedBox(width: 15),
                            Text(
                              'URL',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      const SizedBox(height: 5),
                      if (widget.event.eventUrl.isNotEmpty)
                        SimpleUrlPreview(
                          url: widget.event.eventUrl,
                          descriptionStyle: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white),
                          siteNameStyle: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white),
                          titleStyle: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white),
                          descriptionLines: 2,
                        )
                      else
                        const SizedBox.shrink(),
                      if (widget.event.eventUrl.isNotEmpty)
                        const SizedBox(height: 20)
                      else
                        const SizedBox.shrink(),
                      Row(
                        children: [
                          if (widget.event.isOrg)
                            GestureDetector(
                              onTap: () =>
                                  TabNavigatorProvider.of(context) != null
                                      ? TabNavigatorProvider.of(context)
                                          .pushOrgPage(context,
                                              orgID: widget.event.orgID)
                                      : getIt<NavigationService>().navigateTo(
                                          Routes.org,
                                          arguments: OrgScreenArguments(
                                              orgID: widget.event.orgID)),
                              child: GFAvatar(
                                borderRadius: BorderRadius.circular(5),
                                shape: GFAvatarShape.square,
                                size: 20.0,
                                backgroundImage: state
                                        .org.profileImageUrl.isEmpty
                                    ? Image.asset(
                                            'assets/images/user_placeholder.png')
                                        .image
                                    : CachedNetworkImageProvider(
                                        state.org.profileImageUrl),
                              ),
                            )
                          else
                            GestureDetector(
                              onTap: () =>
                                  TabNavigatorProvider.of(context) != null
                                      ? TabNavigatorProvider.of(context)
                                          .pushUserProfile(context,
                                              userID: widget.event.senderID)
                                      : getIt<NavigationService>().navigateTo(
                                          Routes.user,
                                          arguments: UserScreenArguments(
                                              userID: widget.event.senderID)),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: state
                                        .user.profileImageUrl.isEmpty
                                    ? Image.asset(
                                            'assets/images/user_placeholder.png')
                                        .image
                                    : CachedNetworkImageProvider(
                                        state.user.profileImageUrl),
                              ),
                            ),
                          const SizedBox(width: 10),
                          if (widget.event.isOrg)
                            Container(
                              width: 300,
                              child: Text(
                                state.org.name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            )
                          else
                            Container(
                              width: 300,
                              child: GestureDetector(
                                onTap: () =>
                                    TabNavigatorProvider.of(context) != null
                                        ? TabNavigatorProvider.of(context)
                                            .pushUserProfile(context,
                                                userID: widget.event.senderID)
                                        : getIt<NavigationService>().navigateTo(
                                            Routes.user,
                                            arguments: UserScreenArguments(
                                                userID: widget.event.senderID)),
                                child: Text(
                                  state.user.profileName,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      if (widget.event.isOrg)
                        Row(
                          children: [
                            const SizedBox(width: 40),
                            SizedBox(
                                width: 300,
                                child: Text(
                                    'Created by: ${state.user.profileName}')),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      const SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        onPressed: () => state.isRSVPed
                            ? context.bloc<EventDetailBloc>().add(
                                EventDetailEvent.removeFromRSVP(widget.event))
                            : context
                                .bloc<EventDetailBloc>()
                                .add(EventDetailEvent.addToRSVP(widget.event)),
                        color: state.isRSVPed ? Colors.green : Colors.blue,
                        child: state.isRSVPed
                            ? const Text(
                                'BET',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            : const Text('GOING?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const Icon(Icons.details),
                          const SizedBox(width: 15),
                          Text(
                            'VIP List (${state.rsvpList.size})',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          children: state.rsvpList
                              .asList()
                              .map((user) => ListTile(
                                  title: Text(user.profileName),
                                  leading: CircleAvatar(
                                    backgroundImage: user
                                            .profileImageUrl.isEmpty
                                        ? Image.asset(
                                                'assets/images/user_placeholder.png')
                                            .image
                                        : CachedNetworkImageProvider(
                                            user.profileImageUrl),
                                  )))
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

  // _iosBottomSheet() {
  //   showCupertinoModalPopup(
  //       context: context,
  //       builder: (context) {
  //         return CupertinoActionSheet(
  //           title: const Text('Delete Event?'),
  //           actions: <Widget>[
  //             CupertinoActionSheetAction(
  //                 onPressed: () => context
  //                     .bloc<EventDetailBloc>()
  //                     .add(EventDetailEvent.deleteEvent(widget.event)),
  //                 child: const Text('Yes, Get it Outta Here')),
  //           ],
  //           cancelButton: CupertinoActionSheetAction(
  //             onPressed: () => Navigator.pop(context),
  //             child: const Text('Cancel'),
  //           ),
  //         );
  //       });
  // }

  // _androidDialog() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return SimpleDialog(
  //           title: Text('Are you sure?'),
  //           children: <Widget>[
  //             SimpleDialogOption(
  //               child: Text(
  //                 'Yes, Get it Outta Here',
  //                 style: TextStyle(color: Colors.redAccent),
  //               ),
  //               onPressed: () => widget.isAdmin
  //                   ? context
  //                       .bloc<EventDetailBloc>()
  //                       .add(EventDetailEvent.deleteEvent(widget.event))
  //                   : print('cant'),
  //             ),
  //             SimpleDialogOption(
  //               child: Text(
  //                 'Cancel',
  //               ),
  //               onPressed: () => Navigator.pop(context),
  //             ),
  //           ],
  //         );
  //       });
  // }
}

Route _createRoute(BuildContext parentContext, String image) {
  return PageRouteBuilder<void>(
    pageBuilder: (context, animation, secondaryAnimation) {
      return EventDetailImage(image);
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final rectAnimation = _createTween(parentContext)
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
  final windowSize = MediaQuery.of(context).size;
  final box = context.findRenderObject() as RenderBox;
  final rect = box.localToGlobal(Offset.zero) & box.size;
  final relativeRect = RelativeRect.fromSize(rect, windowSize);

  return RelativeRectTween(
    begin: relativeRect,
    end: RelativeRect.fill,
  );
}
