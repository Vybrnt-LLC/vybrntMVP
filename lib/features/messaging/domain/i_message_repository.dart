import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'message.dart';

abstract class IMessageRepository {
  Stream<List<Message>> getMessageStream(UniqueId groupID, UniqueId channelID);
  Future<Message> sendMessage(UniqueId groupID, UniqueId channelID, Message message);
  Future<void> addReaction(UniqueId groupID, UniqueId channelID, UniqueId messageID, UniqueId userID);
  Future<void> removeReaction(UniqueId groupID, UniqueId channelID, UniqueId messageID, UniqueId userID);
  Future<void> deleteMessage(UniqueId groupID, UniqueId channelID, UniqueId messageID);
}
