import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/core/routes/i_navigation_service.dart';

import 'i_dynamic_link_serivce.dart';
import 'router.gr.dart';

@LazySingleton(as: IDynamicLinkService)
class DynamicLinkService implements IDynamicLinkService {
  final INavigationService _navigationService;

  String uri;
  DynamicLinkService(this._navigationService);
  @override
  Future handleDynamicLinks(String env) async {
    uri = env == 'prod'
        ? 'https://vybrnt.page.link'
        : 'https://vybrntmvp.page.link';
    //Get initial dynamic link if the app is started using the link
    final PendingDynamicLinkData data =
        await FirebaseDynamicLinks.instance.getInitialLink();

    _handleDeepLink(data);

    //INTO FOREGROUND FROM DYNAMIC LINK LOGIC
    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLinkData) async {
      _handleDeepLink(dynamicLinkData);
    }, onError: (OnLinkErrorException e) async {
      print('Dynamic Link Failed: ${e.message}');
    });
  }

  @override
  Future<String> createPostLink(
      {String type, String typeID, String postID}) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uri,
      link: Uri.parse(
          'https://vybrntllc.com/post?type=$type&typeID=$typeID&postID=$postID'),
      androidParameters: AndroidParameters(packageName: 'com.vybrnt.vybrnt'),
      iosParameters: IosParameters(
        bundleId: 'com.example.vybrnt',
        minimumVersion: '0.5.4',
        appStoreId: '1526627896',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        campaign: 'post-detail-page',
        medium: 'social',
        source: 'orkut',
      ),
      // // itunesConnectAnalyticsParameters: ItunesConnectAnalyticsParameters(
      //   providerToken: '123456',
      //   campaignToken: 'example-promo',
      // ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: 'Post Detail Page',
        description: 'This link works whether app is installed or not!',
      ),
    );

    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;

    return shortUrl.toString();
  }

  @override
  Future<String> createEventLink(
      {String type, String typeID, String eventID}) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uri,
      link: Uri.parse(
          'https://vybrntllc.com/event?type=$type&typeID=$typeID&eventID=$eventID'),
      androidParameters: AndroidParameters(packageName: 'com.vybrnt.vybrnt'),
      iosParameters: IosParameters(
        bundleId: 'com.example.vybrnt',
        minimumVersion: '0.5.4',
        appStoreId: '1526627896',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        campaign: 'event-detail-page',
        medium: 'social',
        source: 'orkut',
      ),
      // itunesConnectAnalyticsParameters: ItunesConnectAnalyticsParameters(
      //   providerToken: '123456',
      //   campaignToken: 'example-promo',
      // ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: 'Event Detail Page',
        description: 'This link works whether app is installed or not!',
      ),
    );

    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;

    return shortUrl.toString();
  }

  @override
  Future<String> createUserLink(String userID) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uri,
      link: Uri.parse('https://vybrntllc.com/userProfile?userID=$userID'),
      androidParameters: AndroidParameters(packageName: 'com.vybrnt.vybrnt'),
      iosParameters: IosParameters(
        bundleId: 'com.example.vybrnt',
        minimumVersion: '0.5.4',
        appStoreId: '1526627896',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        campaign: 'user-profile-page',
        medium: 'social',
        source: 'orkut',
      ),
      // itunesConnectAnalyticsParameters: ItunesConnectAnalyticsParameters(
      //   providerToken: '123456',
      //   campaignToken: 'example-promo',
      // ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: 'User Profile',
        description: 'This link works whether app is installed or not!',
      ),
    );

    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;

    return shortUrl.toString();
  }

  @override
  Future<String> createOrgLink(String orgID) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uri,
      link: Uri.parse('https://vybrntllc.com/orgProfile?orgID=$orgID'),
      androidParameters: AndroidParameters(packageName: 'com.vybrnt.vybrnt'),
      iosParameters: IosParameters(
        bundleId: 'com.example.vybrnt',
        minimumVersion: '0.5.4',
        appStoreId: '1526627896',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        campaign: 'org-profile-page',
        medium: 'social',
        source: 'orkut',
      ),
      // itunesConnectAnalyticsParameters: ItunesConnectAnalyticsParameters(
      //   providerToken: '123456',
      //   campaignToken: 'example-promo',
      // ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: 'Org Profile',
        description: 'This link works whether app is installed or not!',
      ),
    );

    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;

    return shortUrl.toString();
  }

  void _handleDeepLink(PendingDynamicLinkData data) {
    final Uri deepLink = data?.link;
    if (deepLink != null) {
      print('_handleDeepLink | deepLink: $deepLink');

      var isPost = deepLink.pathSegments.contains('post');
      if (isPost) _navigateToPost(deepLink);
      var isEvent = deepLink.pathSegments.contains('event');
      if (isEvent) _navigateToEvent(deepLink);
      var isUserProfile = deepLink.pathSegments.contains('userProfile');
      if (isUserProfile) _navigateToUserProfile(deepLink);
      var isOrgProfile = deepLink.pathSegments.contains('orgProfile');
      if (isOrgProfile) _navigateToOrgProfile(deepLink);
    }
  }

  Future<void> _navigateToPost(Uri deepLink) async {
    var type = deepLink.queryParameters['type'];
    var typeID = deepLink.queryParameters['typeID'];
    var postID = deepLink.queryParameters['postID'];
    await _navigationService.navigateTo(Routes.postDetail,
        arguments:
            PostScreenArguments(type: type, typeID: typeID, postID: postID));
  }

  Future<void> _navigateToEvent(Uri deepLink) async {
    var type = deepLink.queryParameters['type'];
    var typeID = deepLink.queryParameters['typeID'];
    var eventID = deepLink.queryParameters['eventID'];
    await _navigationService.navigateTo(Routes.eventDetail,
        arguments:
            EventScreenArguments(type: type, typeID: typeID, eventID: eventID));
  }

  Future<void> _navigateToUserProfile(Uri deepLink) async {
    var userID = deepLink.queryParameters['userID'];
    await _navigationService.navigateTo(Routes.user,
        arguments: UserScreenArguments(userID: userID));
  }

  Future<void> _navigateToOrgProfile(Uri deepLink) async {
    var orgID = deepLink.queryParameters['orgID'];
    await _navigationService.navigateTo(Routes.org,
        arguments: OrgScreenArguments(orgID: orgID));
  }
}
