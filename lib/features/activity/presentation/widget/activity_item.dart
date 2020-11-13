import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/features/activity/application/actor/activity_actor_bloc.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityItem extends StatelessWidget {
  final Activity activity;

  const ActivityItem({Key key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityActorBloc, ActivityActorState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Container(
            color: Colors.white54,
            child: ListTile(
              title: GestureDetector(
                  onTap: () => _getActivityPush(activity, context, state),
                  child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            TextSpan(
                                text: activity.username.isEmpty
                                    ? 'Anonymous User'
                                    : activity.username,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: _getActivityText(activity))
                          ]))),
              leading: activity.isOrg
                  ? GestureDetector(
                      onTap: () => TabNavigatorProvider.of(context)
                          .pushOrgPage(context, orgID: activity.orgID),
                      child: GFAvatar(
                        shape: GFAvatarShape.square,
                        borderRadius: BorderRadius.circular(5),
                        backgroundColor: Colors.white,
                        backgroundImage: activity.profileImageURL.isEmpty
                            ? AssetImage('assets/images/user_placeholder.png')
                            : CachedNetworkImageProvider(
                                activity.profileImageURL),
                      ),
                    )
                  : GestureDetector(
                      onTap: () => TabNavigatorProvider.of(context)
                          .pushUserProfile(context, userID: activity.userID),
                      child: CircleAvatar(
                          radius: 27,
                          backgroundImage: activity.profileImageURL.isEmpty
                              ? AssetImage('assets/images/user_placeholder.png')
                              : CachedNetworkImageProvider(
                                  activity.profileImageURL)),
                    ),
              subtitle: Text(timeago.format(activity.timeStamp),
                  overflow: TextOverflow.ellipsis),
            )),
      );
    });
  }

  String _getActivityText(Activity activity) {
    switch (activity.type) {
      case 'likeUser':
        {
          return ' liked your post';
        }
        break;
      case 'repostUser':
        {
          return ' reposted your post';
        }
        break;
      case 'commentUser':
        {
          return ' commented on your post';
        }
        break;
      case 'likeOrg':
        {
          return " liked your organization's post";
        }
        break;
      case 'repostOrg':
        {
          return " reposted your organization's post";
        }
        break;
      case 'commentOrg':
        {
          return " commented on your organization's post";
        }
        break;
      case 'followUser':
        {
          return ' followed you';
        }
        break;
      case 'followOrg':
        {
          return ' joined your organization page';
        }
        break;
      case 'post':
        {
          return ' posted an update';
        }
        break;
      case 'event':
        {
          return ' created a new event';
        }
        break;
      case 'eventStart':
        {
          return ' event is starting soon';
        }
        break;
      case 'admin':
        {
          return ' has given you admin access';
        }
        break;
    }
  }

  void _getActivityPush(
      Activity activity, BuildContext context, ActivityActorState state) {
    switch (activity.type) {
      case 'likeUser':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'repostUser':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'commentUser':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'likeOrg':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'repostOrg':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'commentOrg':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'followUser':
        {
          return TabNavigatorProvider.of(context)
              .pushUserProfile(context, userID: activity.userID);
        }
        break;
      case 'followOrg':
        {
          return TabNavigatorProvider.of(context)
              .pushOrgPage(context, orgID: activity.orgID);
        }
        break;
      case 'post':
        {
          return TabNavigatorProvider.of(context)
              .pushPostDetail(context, post: state.post);
        }
        break;
      case 'event':
        {
          return TabNavigatorProvider.of(context)
              .pushEventDetail(context, event: state.event);
        }
        break;
      case 'eventStart':
        {
          return TabNavigatorProvider.of(context)
              .pushEventDetail(context, event: state.event);
        }
        break;
      case 'admin':
        {
          return TabNavigatorProvider.of(context)
              .pushOrgPage(context, orgID: activity.orgID);
        }
        break;
    }
  }
}
