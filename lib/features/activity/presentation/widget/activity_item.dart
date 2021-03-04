import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
                  style: const TextStyle(fontSize: 14.0, color: Colors.black),
                  children: _getActivityText(activity),
                ))),
          )),
    );
  }

  List<InlineSpan> _getActivityText(Activity activity) {
    final titleSubject = activity.titleSubject;
    final bodySubject = activity.bodySubject;
    // ignore: prefer_final_locals
    var text = <InlineSpan>[];
    switch (activity.activityType) {
      case ActivityType.like:
        {
          if (activity.ownerType == OwnerType.user) {
            text.add(TextSpan(
                text: titleSubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(const TextSpan(text: ' liked your post'));
          }
          if (activity.ownerType == OwnerType.org) {
            text.add(TextSpan(
                text: titleSubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(const TextSpan(text: " liked your organization's post"));
          }
          return text;
        }
      case ActivityType.repost:
        {
          if (activity.ownerType == OwnerType.user) {
            text.add(TextSpan(
                text: titleSubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(const TextSpan(text: ' shared your post'));
          }
          if (activity.ownerType == OwnerType.org) {
            text.add(TextSpan(
                text: titleSubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(const TextSpan(text: " shared your organization's post"));
          }
          return text;
        }
      case ActivityType.comment:
        {
          if (activity.ownerType == OwnerType.user) {
            text.add(TextSpan(
                text: titleSubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: ' commented on your post: $bodySubject'));
          }
          if (activity.ownerType == OwnerType.org) {
            text.add(TextSpan(
                text: titleSubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(
                text: " commented your organization's post: $bodySubject"));
          }
          return text;
        }
      case ActivityType.post:
        {
          text.add(TextSpan(
              text: titleSubject,
              style: const TextStyle(fontWeight: FontWeight.bold)));
          text.add(TextSpan(text: ' posted a new update: $bodySubject'));
          return text;
        }
      case ActivityType.event:
        {
          text.add(TextSpan(
              text: titleSubject,
              style: const TextStyle(fontWeight: FontWeight.bold)));
          text.add(TextSpan(text: ' created a new event: $bodySubject'));
          return text;
        }
      case ActivityType.follow:
        {
          if (activity.ownerType == OwnerType.user) {
            text.add(TextSpan(
                text: bodySubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(const TextSpan(text: ' has followed you'));
          }
          if (activity.ownerType == OwnerType.org) {
            text.add(TextSpan(
                text: bodySubject,
                style: const TextStyle(fontWeight: FontWeight.bold)));
            text.add(TextSpan(text: " has joined $titleSubject's page"));
          }
          return text;
        }
      case ActivityType.admin:
        {
          text.add(TextSpan(
              text: bodySubject,
              style: const TextStyle(fontWeight: FontWeight.bold)));
          text.add(TextSpan(
              text: " has given you admin access to $titleSubject's page"));
          return text;
        }
      default:
        return text;
    }
  }

  void _getActivityPush(Activity activity, BuildContext context) {
    switch (activity.activityType) {
      case ActivityType.like:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.repost:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.comment:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.follow:
        {
          return TabNavigatorProvider.of(context)
              .pushUserProfile(context, userID: activity.objectID);
        }
        break;
      case ActivityType.post:
        {
          return TabNavigatorProvider.of(context).pushPost(context,
              postID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.event:
        {
          return TabNavigatorProvider.of(context).pushEvent(context,
              eventID: activity.objectID,
              typeID: activity.ownerID,
              type: OwnerTypeHelper.stringOf(activity.ownerType));
        }
        break;
      case ActivityType.admin:
        {
          return TabNavigatorProvider.of(context)
              .pushOrgPage(context, orgID: activity.objectID);
        }
        break;
    }
  }
}

Widget _buildProfileImage(Activity activity, BuildContext context) {
  final imageURL = activity.imageURL.isEmpty
      ? Image.asset('assets/images/user_placeholder.png').image
      : CachedNetworkImageProvider(activity.imageURL);
  switch (activity.profileType) {
    case OwnerType.user:
      return GestureDetector(
        onTap: () => TabNavigatorProvider.of(context)
            .pushUserProfile(context, userID: activity.profileID),
        child: CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            backgroundImage: imageURL),
      );
    case OwnerType.org:
      return GestureDetector(
        onTap: () => TabNavigatorProvider.of(context)
            .pushOrgPage(context, orgID: activity.profileID),
        child: GFAvatar(
          shape: GFAvatarShape.square,
          borderRadius: BorderRadius.circular(5),
          backgroundColor: Colors.white,
          backgroundImage: imageURL,
        ),
      );
    default:
      return const CircleAvatar();
  }
}
