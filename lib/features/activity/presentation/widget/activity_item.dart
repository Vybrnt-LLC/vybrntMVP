import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityItem extends StatelessWidget {
  final Activity activity;

  const ActivityItem({Key key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Container(
          color: Colors.white54,
          child: GestureDetector(
            onTap: () => _getActivityPush(activity, context),
            child: ListTile(
                //contentPadding: const EdgeInsets.all(15),
                leading: _buildProfileImage(activity, context),
                subtitle: Text(timeago.format(activity.timeStamp),
                    overflow: TextOverflow.ellipsis),
                title: RichText(
                    //overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  children: _getActivityText(activity),
                ))),
          )),
    );
  }

  List<InlineSpan> _getActivityText(Activity activity) {
    final titleSubject = activity.titleSubject;
    final bodySubject = activity.bodySubject;
    List<InlineSpan> text = new List<InlineSpan>();
    switch (activity.activityType) {
      case ActivityType.LIKE:
        {
          if (activity.ownerType == OwnerType.USER) {
            text.add(TextSpan(
                text: titleSubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' liked your post'));
          }
          if (activity.ownerType == OwnerType.ORG) {
            text.add(TextSpan(
                text: titleSubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' liked your organization\'s post'));
          }
          return text;
        }
      case ActivityType.REPOST:
        {
          if (activity.ownerType == OwnerType.USER) {
            text.add(TextSpan(
                text: titleSubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' shared your post'));
          }
          if (activity.ownerType == OwnerType.ORG) {
            text.add(TextSpan(
                text: titleSubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' shared your organization\'s post'));
          }
          return text;
        }
      case ActivityType.COMMENT:
        {
          if (activity.ownerType == OwnerType.USER) {
            text.add(TextSpan(
                text: titleSubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' commented on your post: $bodySubject'));
          }
          if (activity.ownerType == OwnerType.ORG) {
            text.add(TextSpan(
                text: titleSubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(
                text: ' commented your organization\'s post: $bodySubject'));
          }
          return text;
        }
      case ActivityType.POST:
        {
          text.add(TextSpan(
              text: titleSubject,
              style: TextStyle(fontWeight: FontWeight.bold)));
          text.add(TextSpan(text: ' posted a new update: $bodySubject'));
          return text;
        }
      case ActivityType.EVENT:
        {
          text.add(TextSpan(
              text: titleSubject,
              style: TextStyle(fontWeight: FontWeight.bold)));
          text.add(TextSpan(text: ' created a new event: $bodySubject'));
          return text;
        }
      case ActivityType.FOLLOW:
        {
          if (activity.ownerType == OwnerType.USER) {
            text.add(TextSpan(
                text: bodySubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' has followed you'));
          }
          if (activity.ownerType == OwnerType.ORG) {
            text.add(TextSpan(
                text: bodySubject,
                style: TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' has joined $titleSubject\'s page'));
          }
          return text;
        }
      case ActivityType.ADMIN:
        {
          text.add(TextSpan(
              text: bodySubject,
              style: TextStyle(fontWeight: FontWeight.bold)));
          text.add(TextSpan(
              text: ' has given you admin access to $titleSubject\'s page'));
          return text;
        }
      default:
        return text;
    }
  }

  void _getActivityPush(Activity activity, BuildContext context) {
    switch (activity.activityType) {
      case ActivityType.LIKE:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.REPOST:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.COMMENT:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.FOLLOW:
        {
          return TabNavigatorProvider.of(context)
              .pushUserProfile(context, userID: activity.objectID);
        }
        break;
      case ActivityType.POST:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.EVENT:
        {
          return TabNavigatorProvider.of(context).pushEvent(context,
              eventID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.ADMIN:
        {
          return TabNavigatorProvider.of(context)
              .pushOrgPage(context, orgID: activity.objectID);
        }
        break;
    }
  }
}

Widget _buildProfileImage(Activity activity, BuildContext context) {
  switch (activity.profileType) {
    case OwnerType.USER:
      return GestureDetector(
        onTap: () => TabNavigatorProvider.of(context)
            .pushUserProfile(context, userID: activity.profileID),
        child: CircleAvatar(
            radius: 27,
            backgroundImage: activity.imageURL.isEmpty
                ? AssetImage('assets/images/user_placeholder.png')
                : CachedNetworkImageProvider(activity.imageURL)),
      );
    case OwnerType.ORG:
      return GestureDetector(
        onTap: () => TabNavigatorProvider.of(context)
            .pushOrgPage(context, orgID: activity.profileID),
        child: GFAvatar(
          shape: GFAvatarShape.square,
          borderRadius: BorderRadius.circular(5),
          backgroundColor: Colors.white,
          backgroundImage: activity.imageURL.isEmpty
              ? AssetImage('assets/images/user_placeholder.png')
              : CachedNetworkImageProvider(activity.imageURL),
        ),
      );
    default:
      return CircleAvatar();
  }
}
