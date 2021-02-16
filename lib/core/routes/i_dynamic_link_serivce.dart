abstract class IDynamicLinkService {
  Future handleDynamicLinks(String env);
  Future<String> createPostLink({String type, String typeID, String postID});
  Future<String> createEventLink({String type, String typeID, String eventID});
  Future<String> createUserLink(String userID);
  Future<String> createOrgLink(String orgID);
}
