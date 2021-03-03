import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/messaging/domain/message.dart';
import 'package:vybrnt_mvp/features/messaging/domain/i_message_repository.dart';
/*
@LazySingleton(as: IMessageRepository)
class MessageRepository implements IMessageRepository {
  final FirebaseFirestore _firestore;

  MessageRepository(this._firestore);

  
  Stream<List<Message>> getMessageStream(UniqueId groupID, UniqueId channelID, UniqueId userID);

  Future<Message> sendMessage(UniqueId groupID, UniqueId channelID, Message message);

  Future<void> addReaction(UniqueId groupID, UniqueId channelID, UniqueId messageID, UniqueId userID);

  Future<void> removeReaction(UniqueId groupID, UniqueId channelID, UniqueId messageID, UniqueId userID);
  
  Future<void> deleteMessage(UniqueId groupID, UniqueId channelID, UniqueId messageID);
  
}
*/