import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:intl/intl.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_tile_bloc/event_tile_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    Key key,
    @required this.event,
    this.isAdmin,
    this.color = Colors.black,
  }) : super(key: key);

  final Event event;
  final bool isAdmin;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventTileBloc, EventTileState>(
        builder: (context, state) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.5, color: color),
            //bottom: BorderSide(width: 0.7, color: Colors.black),
          ),
        ),
        child: ListTile(
          // onLongPress: () => isAdmin
          //     ? context
          //         .bloc<EventTileBloc>()
          //         .add(EventTileEvent.deleteEvent(event))
          //     : {},
          subtitle: Text(DateFormat.yMMMEd().format(event.startTime)),
          title: Text(event.eventName.toString()),
          trailing: Text(DateFormat.jm().format(event.startTime)),
          leading: (!event.isOrg)
              ? GestureDetector(
                  onTap: () => TabNavigatorProvider.of(context) != null
                      ? TabNavigatorProvider.of(context).pushUserProfile(
                          context,
                          userID: state.user.userID.getOrCrash())
                      : getIt<NavigationService>().navigateTo(Routes.user,
                          arguments: UserScreenArguments(
                              userID: state.user.userID.getOrCrash())),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: state.user.profileImageUrl.isEmpty
                        ? Image.asset('assets/images/user_placeholder.png')
                            .image
                        : CachedNetworkImageProvider(
                            state.user.profileImageUrl),
                  ),
                )
              : GestureDetector(
                  onTap: () => TabNavigatorProvider.of(context) != null
                      ? TabNavigatorProvider.of(context).pushOrgPage(context,
                          orgID: state.org.orgID.getOrCrash())
                      : getIt<NavigationService>().navigateTo(Routes.org,
                          arguments: OrgScreenArguments(
                              orgID: state.org.orgID.getOrCrash())),
                  child: GFAvatar(
                    borderRadius: BorderRadius.circular(15),
                    //backgroundColor: Colors.green[200],
                    shape: GFAvatarShape.square,
                    size: 30.0,
                    backgroundImage: state.org.profileImageUrl.isEmpty
                        ? Image.asset('assets/images/user_placeholder.png')
                            .image
                        : CachedNetworkImageProvider(state.org.profileImageUrl),
                  ),
                ), //event.name
          // onTap: () => widget.onPushEventDetail(
          //     _selectedEvents[index]), // pass event
        ),
      );
    });
  }
}
