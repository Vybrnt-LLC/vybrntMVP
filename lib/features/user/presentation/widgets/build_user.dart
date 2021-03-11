import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/organization/application/event_list_bloc/event_list_bloc.dart';
import 'package:vybrnt_mvp/features/posts/application/post_watcher/post_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/user/application/bloc/user_bloc.dart';
import 'package:vybrnt_mvp/features/user/application/fab_bloc/fab_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/item_model.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/user_profile_about_tab.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/user_profile_event_tab.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/user_profile_feed_tab.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/sliver_appbar_delegate.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/sliver_header_delegate.dart';

import 'create_fab.dart';

class BuildUser extends StatefulWidget {
  final User user;
  final bool isBlocked;
  final bool menuButton;

  const BuildUser({
    Key key,
    this.user,
    this.menuButton,
    this.isBlocked,
  }) : super(key: key);
  @override
  _BuildUserState createState() => _BuildUserState();
}

class _BuildUserState extends State<BuildUser> {
  final snackBar = SnackBar(
      content: Image.network(
    "https://media.giphy.com/media/l0HlvtIPzPdt2usKs/giphy.gif",
    height: 125.0,
    width: 125.0,
  ));

  final snackBarLoveUrself = SnackBar(
      content: Image.network(
    "https://media.giphy.com/media/gfqnxySfzWe0NgVhqj/giphy.gif",
    height: 125.0,
    width: 125.0,
  ));

  final snackBarBlock =
      const SnackBar(content: Text('This user has been blocked'));

  final snackBarUnblocked = const SnackBar(
      content: Text('You have successfully unblocked this user'));
  final snackBarNotify = const SnackBar(
      content: Text('Must be following the user to be notified of updates'));
  Widget _displayButton(User user, bool isFollowing) {
    return user.userID.getOrCrash() ==
            Provider.of<UserData>(context, listen: false).currentUserID
        ? Container(
            width: 100.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () => TabNavigatorProvider.of(context) != null
                  ? TabNavigatorProvider.of(context)
                      .pushEditUserProfile(context, user: user)
                  : getIt<NavigationService>().navigateTo(
                      Routes.editUserProfile,
                      arguments: EditUserProfileScreenArguments(
                          user: user)), //widget.onPushEdit(user),
              color: stringToColor(widget.user.secondaryColor),
              textColor: Colors.white,
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 11.0),
              ),
            ),
          )
        : Container(
            width: 100.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () => isFollowing
                  ? context.bloc<UserBloc>().add(UserEvent.removeFollower(
                      widget.user.userID.getOrCrash(),
                      Provider.of<UserData>(context, listen: false)
                          .currentUserID))
                  : context.bloc<UserBloc>().add(UserEvent.addFollower(
                      widget.user.userID.getOrCrash(),
                      Provider.of<UserData>(context, listen: false)
                          .currentUserID)),
              color: isFollowing
                  ? Colors.grey[200]
                  : stringToColor(widget.user.secondaryColor),
              textColor: isFollowing ? Colors.black : Colors.white,
              child: Text(
                isFollowing ? 'Unfollow' : 'Follow',
                style: const TextStyle(fontSize: 11.0),
              ),
            ),
          );
  }

  Widget _displayButton2(User user) {
    return user.userID.getOrCrash() ==
            Provider.of<UserData>(context, listen: false).currentUserID
        ? Container(
            width: 100.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () =>
                  Scaffold.of(context).showSnackBar(snackBar), //wid
              color: stringToColor(widget.user.secondaryColor),
              textColor: Colors.white,
              child: const Text(
                'Messaging',
                style: TextStyle(fontSize: 11.0),
              ),
            ),
          )
        : Container(
            width: 100.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () => Scaffold.of(context).showSnackBar(snackBar),
              color: stringToColor(widget.user.secondaryColor),
              textColor: Colors.white,
              child: const Text(
                'Message',
                style: TextStyle(fontSize: 11.0),
              ),
            ),
          );
  }

  Widget _topLeftButton(String userID, String currentUserID) {
    if (!widget.menuButton) {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      );
    } else {
      return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            SimpleHiddenDrawerController.of(context).toggle();
          });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = ['Feed', 'About', 'Events'];
    final List<Item> data = [
      Item(headerValue: 'Bio', expandedValue: widget.user.bio),
      Item(headerValue: 'Major', expandedValue: widget.user.major),
      Item(headerValue: 'Email', expandedValue: widget.user.email),
    ];
    final currentUserID =
        Provider.of<UserData>(context, listen: false).currentUserID;
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      final shareLink = state.shareLink;
      final profileName = widget.user.profileName;
      final String shareMessage =
          "Check out $profileName's profile on Vybrnt! \n$shareLink";
      return Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: BlocProvider(
            create: (context) => getIt<FabBloc>(),
            child: CreateFAB(),
          ),
          body: SafeArea(
            top: false,
            child: DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      actions: [
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.share,
                                color: Colors.white),
                            onPressed: () {
                              final RenderBox box =
                                  context.findRenderObject() as RenderBox;
                              Share.share(shareMessage,
                                  sharePositionOrigin:
                                      box.localToGlobal(Offset.zero) &
                                          box.size);
                            }),
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
                            // Add Each FocusedMenuItem  for Menu Options
                            if (currentUserID ==
                                widget.user.userID.getOrCrash())
                              FocusedMenuItem(
                                title: const Text("Feedback"),
                                trailingIcon: const Icon(Icons.open_in_new),
                                onPressed: () => launch(
                                    'https://forms.gle/cS3LFQbC8ZyMgpxL9'),
                              )
                            else
                              FocusedMenuItem(
                                  title: state.isBlocking
                                      ? const Text('Unblock')
                                      : const Text("Block"),
                                  trailingIcon: const Icon(Icons.open_in_new),
                                  onPressed: () {
                                    if (!state.isBlocking) {
                                      context.bloc<UserBloc>().add(
                                          UserEvent.blockUser(
                                              widget.user.userID.getOrCrash()));
                                      Scaffold.of(context)
                                          .showSnackBar(snackBarBlock);
                                    } else {
                                      context.bloc<UserBloc>().add(
                                          UserEvent.unBlockUser(
                                              widget.user.userID.getOrCrash()));
                                      Scaffold.of(context)
                                          .showSnackBar(snackBarUnblocked);
                                    }
                                  }),
                            FocusedMenuItem(
                                title: const Text("Report"),
                                trailingIcon: const Icon(Icons.flag),
                                onPressed: () => TabNavigatorProvider.of(
                                            context) !=
                                        null
                                    ? TabNavigatorProvider.of(context)
                                        .pushReport(context,
                                            contentID: '',
                                            contentType: '',
                                            ownerID:
                                                widget.user.userID.getOrCrash(),
                                            ownerType: 'user')
                                    : getIt<NavigationService>().navigateTo(
                                        Routes.report,
                                        arguments: ReportScreenArguments(
                                            ownerID:
                                                widget.user.userID.getOrCrash(),
                                            ownerType: 'user'))),
                          ],
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                      backgroundColor: stringToColor(widget.user.primaryColor),
                      leading: _topLeftButton(
                          widget.user.userID.getOrCrash(), currentUserID),
                      expandedHeight: 250.0,
                      forceElevated: innerBoxIsScrolled,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                          centerTitle: false,
                          titlePadding: const EdgeInsetsDirectional.only(
                              start: 65, bottom: 12),
                          title: Container(
                            // decoration: BoxDecoration(
                            //   color: Colors.black,s
                            //   borderRadius: BorderRadius.circular(5),
                            //   //border: Border.all(color: Colors.white),
                            // ),
                            // constraints: ,
                            //color: Colors.black,
                            //alignment: Alignment.bottomCenter,
                            width: 200,
                            //height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                OpenContainer<bool>(
                                    closedColor: const Color(0x00000000),
                                    openBuilder: (BuildContext _,
                                        VoidCallback openContainer) {
                                      return EventDetailImage(
                                          widget.user.profileImageUrl);
                                    },
                                    closedShape: const RoundedRectangleBorder(),
                                    closedElevation: 0.0,
                                    closedBuilder: (BuildContext _,
                                        VoidCallback openContainer) {
                                      return CircleAvatar(
                                        radius: 18,
                                        backgroundColor: stringToColor(
                                            widget.user.primaryColor),
                                        child: CircleAvatar(
                                          radius: 17.0,
                                          backgroundColor: Colors.white,
                                          backgroundImage: widget
                                                  .user.profileImageUrl.isEmpty
                                              ? Image.asset(
                                                      'assets/images/user_placeholder.png')
                                                  .image
                                              : CachedNetworkImageProvider(
                                                  widget.user.profileImageUrl),
                                        ),
                                      );
                                    }),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 150,
                                  height: 30,
                                  child: AutoSizeText(
                                    widget.user.profileName,
                                    maxLines: 2,
                                    //softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: Theme.of(context)
                                        .appBarTheme
                                        .textTheme
                                        .headline1
                                        .copyWith(fontSize: 24),
                                  ),
                                )
                              ],
                            ),
                          ),
                          background: widget.user.bannerImageUrl.isEmpty
                              ? Image.asset(
                                  'assets/images/Vybrnt_stockbanner.png',
                                  fit: BoxFit.cover,
                                )
                              : Image(
                                  image: CachedNetworkImageProvider(
                                      widget.user.bannerImageUrl),
                                  fit: BoxFit.cover,
                                )),
                    ),
                    // _displayButton(user),
                    SliverPersistentHeader(
                      delegate: SliverHeaderDelegate(
                        orgList: state.followedOrgIDs,
                        photoCount: state.photoCount,
                        followers: state.followerIDs,
                        following: state.followingIDs,
                        expandedHeight: 150,
                        user: widget.user,
                        primaryColor: stringToColor(widget.user.primaryColor),
                        button1: _displayButton(widget.user, state.isFollowing),
                        button2: _displayButton2(widget.user),
                        button3: state.isNotified
                            ? FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.grey[200],
                                onPressed: () => currentUserID ==
                                        widget.user.userID.getOrCrash()
                                    ? Scaffold.of(context)
                                        .showSnackBar(snackBarLoveUrself)
                                    : state.isFollowing
                                        ? context.bloc<UserBloc>().add(
                                            UserEvent.removeUserFromNotify(widget.user.userID
                                                .getOrCrash()))
                                        : Scaffold.of(context)
                                            .showSnackBar(snackBarNotify),
                                child: const Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ))
                            : FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color:
                                    stringToColor(widget.user.secondaryColor),
                                onPressed: () => currentUserID ==
                                        widget.user.userID.getOrCrash()
                                    ? Scaffold.of(context)
                                        .showSnackBar(snackBarLoveUrself)
                                    : state.isFollowing
                                        ? context
                                            .bloc<UserBloc>()
                                            .add(UserEvent.addUserToNotify(widget.user.userID.getOrCrash()))
                                        : Scaffold.of(context).showSnackBar(snackBarNotify),
                                child: const Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                )),
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: SliverAppBarDelegate(
                        color: stringToColor(widget.user
                            .primaryColor), //Color.fromRGBO(10, 172, 193, 1.0),
                        tabBar: TabBar(
                          indicatorColor:
                              stringToColor(widget.user.secondaryColor),
                          labelColor: Colors.white,
                          labelStyle: const TextStyle(
                              color: Colors.red,
                              decorationColor: Colors.deepOrange),
                          unselectedLabelColor: Colors.grey[400],
                          tabs: _tabs
                              .map((String name) => Tab(text: name))
                              .toList(),
                          // tabs: [
                          //   Tab(text: "Feed"),
                          //   Tab(text: "About"),
                          //   Tab(text: "Photos"),
                          // ],
                        ),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: TabBarView(children: <Widget>[
                  BlocProvider<PostWatcherBloc>(
                    create: (context) => getIt<PostWatcherBloc>()
                      ..add(PostWatcherEvent.getData(
                          widget.user.userID.getOrCrash(), false)),
                    child: UserProfileFeedTab(
                      userID: widget.user.userID.getOrCrash(),
                      user: widget.user,
                    ),
                  ),
                  UserProfileAboutTab(
                    user: widget.user,
                    data: data,
                  ),
                  BlocProvider<EventListBloc>(
                    create: (context) => getIt<EventListBloc>()
                      ..add(EventListEvent.getData(
                          widget.user.userID.getOrCrash(), false)),
                    child: UserProfileEventTab(
                      user: widget.user,
                      userID: widget.user.userID.getOrCrash(),
                    ),
                  ),
                  // new UserProfilePhotosTab(
                  //   userID: widget.user.userID.getOrCrash(),
                  // )
                ]),
              ),
            ),
          ));
    });
  }

  double _getTextSize(String name) {
    if (name.length > 20) {
      return 9.0;
    } else if (name.length > 13) {
      return 13.0;
    } else {
      return 20.0;
    }
  }
}
