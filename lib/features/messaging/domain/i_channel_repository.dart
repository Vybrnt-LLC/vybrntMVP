import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'channel.dart';

abstract class IChannelRepository {
  Stream<List<Channel>> getChannelsStream(UniqueId groupID, UniqueId userID);
  Stream<Channel> getStreamForChannel(UniqueId groupID, UniqueId channelID, UniqueId userID);
  Future<void> markChannelRead(UniqueId groupID, UniqueId channelID, UniqueId userID);
  Future<void> leaveChannel(UniqueId groupID, UniqueId channelID, UniqueId userID);
  Future<Channel> joinChannel(UniqueId groupID, Channel channel, UniqueId userID);
  Future<Channel> inviteToChannel(UniqueId groupID, String groupName, Channel channel, List<String> members);
  Future<Channel> createChannel(UniqueId groupID, Channel channel, List<String> members, UniqueId authorID);
  Future<void> updateChannel(UniqueId groupID, Channel channel);
  Future<Channel> getChannel(UniqueId groupID, UniqueId channelID, UniqueId userID);
}
