const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

exports.onFollowUser = functions.firestore
    .document('/followers/{userID}/userFollowers/{followerID}')
    .onCreate(async (snapshot, context) => {
        console.log(snapshot.data());
        const userID = context.params.userID;
        const followerID = context.params.followerID;
        const followedUserPostsRef = admin
            .firestore()
            .collection('posts')
            .doc(userID)
            .collection('userPosts');
        const userFeedRef = admin
            .firestore()
            .collection('feeds')
            .doc(followerID)
            .collection('userFeed');
        const followedUserPostsSnapshot = await followedUserPostsRef.get();
        followedUserPostsSnapshot.forEach(doc => {
            if (doc.exists) {
                userFeedRef.doc(doc.id).set(doc.data());
            }
        });

    });

exports.onUnfollowUser = functions.firestore
    .document('/followers/{userID}/userFollowers/{followerID}')
    .onDelete(async (snapshot, context) => {
        const userID = context.params.userID;
        const followerID = context.params.followerID;
        const userFeedRef = admin
            .firestore()
            .collection('feeds')
            .doc(followerID)
            .collection('userFeed')
            .where('senderID', '==', userID);
        const userPostsSnapshot = await userFeedRef.get();
        userPostsSnapshot.forEach(doc => {
            if (doc.exists) {
                doc.ref.delete();
            }
        });

    });

exports.onUploadPost = functions.firestore
    .document('/posts/{userID}/userPosts/{postID}')
    .onCreate(async (snapshot, context) => {
        console.log(snapshot.data());
        const userID = context.params.userID;
        const postID = context.params.postID;
        const userFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(userID)
            .collection('userFollowers');
        const userFollowersSnapshot = await userFollowersRef.get();
        userFollowersSnapshot.forEach(doc => {
            admin
                .firestore()
                .collection('feeds')
                .doc(doc.id)
                .collection('userFeed')
                .doc(postID)
                .set(snapshot.data());
        });
    });

exports.onUpdatePost = functions.firestore
    .document('/posts/{userID}/userPosts/{postID}')
    .onUpdate(async (snapshot, context) => {
        const userID = context.params.userID;
        const postID = context.params.postID;
        const newPostData = snapshot.after.data();
        console.log(newPostData);
        const userFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(userID)
            .collection('userFollowers');
        const userFollowersSnapshot = await userFollowersRef.get();
        userFollowersSnapshot.forEach(async userDoc => {
            const postRef = admin
                .firestore()
                .collection('feeds')
                .doc(userDoc.id)
                .collection('userFeed');
            const postDoc = await postRef.doc(postID).get();
            if (postDoc.exists) {
                postDoc.ref.update(newPostData);
            }
        });
    });

exports.onFollowOrg = functions.firestore
    .document('/followers/{orgID}/orgFollowers/{followerID}')
    .onCreate(async (snapshot, context) => {
        console.log(snapshot.data());
        const orgID = context.params.orgID;
        const followerID = context.params.followerID;
        const followedOrgPostsRef = admin
            .firestore()
            .collection('posts')
            .doc(orgID)
            .collection('orgPosts');
        const userFeedRef = admin
            .firestore()
            .collection('feeds')
            .doc(followerID)
            .collection('userFeed');
        const followedOrgPostsSnapshot = await followedOrgPostsRef.get();
        followedOrgPostsSnapshot.forEach(doc => {
            if (doc.exists) {
                userFeedRef.doc(doc.id).set(doc.data());
            }
        });

    });

exports.onUnfollowOrg = functions.firestore
    .document('/followers/{orgID}/orgFollowers/{followerID}')
    .onDelete(async (snapshot, context) => {
        const orgID = context.params.orgID;
        const followerID = context.params.followerID;
        const userFeedRef = admin
            .firestore()
            .collection('feeds')
            .doc(followerID)
            .collection('userFeed')
            .where('senderID', '==', orgID);
        const orgPostsSnapshot = await userFeedRef.get();
        orgPostsSnapshot.forEach(doc => {
            if (doc.exists) {
                doc.ref.delete();
            }
        });

    });

exports.onUploadOrgPost = functions.firestore
    .document('/posts/{orgID}/orgPosts/{postID}')
    .onCreate(async (snapshot, context) => {
        console.log(snapshot.data());
        const orgID = context.params.orgID;
        const postID = context.params.postID;
        const orgFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(orgID)
            .collection('orgFollowers');
        const orgFollowersSnapshot = await orgFollowersRef.get();
        orgFollowersSnapshot.forEach(doc => {
            admin
                .firestore()
                .collection('feeds')
                .doc(doc.id)
                .collection('userFeed')
                .doc(postID)
                .set(snapshot.data());
        });
    });

exports.onUpdateOrgPost = functions.firestore
    .document('/posts/{orgID}/orgPosts/{postID}')
    .onUpdate(async (snapshot, context) => {
        const orgID = context.params.orgID;
        const postID = context.params.postID;
        const newPostData = snapshot.after.data();
        console.log(newPostData);
        const orgFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(orgID)
            .collection('orgFollowers');
        const orgFollowersSnapshot = await orgFollowersRef.get();
        orgFollowersSnapshot.forEach(async orgDoc => {
            const postRef = admin
                .firestore()
                .collection('feeds')
                .doc(orgDoc.id)
                .collection('userFeed');
            const postDoc = await postRef.doc(postID).get();
            if (postDoc.exists) {
                postDoc.ref.update(newPostData);
            }
        });
    });

    exports.onDeletePost = functions.firestore
    .document('/posts/{userID}/userPosts/{postID}')
    .onDelete(async (snapshot, context) => {
        const userID = context.params.userID;
        const postID = context.params.postID;
        const userFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(userID)
            .collection('userFollowers');
        const cultureRef = admin
                .firestore()
                .collection('categories')
                .doc('Culture_Social')
                .collection('posts');
        const academicsRef = admin
                .firestore()
                .collection('categories')
                .doc('Academics')
                .collection('posts');
        const cashMoneyRef = admin
                .firestore()
                .collection('categories')
                .doc('Cash_Money')
                .collection('posts');   
        const opportunityRef = admin
                .firestore()
                .collection('categories')
                .doc('Opportunity')
                .collection('posts'); 
        const wellnessRef = admin
                .firestore()
                .collection('categories')
                .doc('Wellness')
                .collection('posts');
        const humanitarianRef = admin
                .firestore()
                .collection('categories')
                .doc('Community_Service')
                .collection('posts');
                const postCultureDoc = await cultureRef.doc(postID).get();
                if (postCultureDoc.exists) {
                    postCultureDoc.ref.delete();
                }
                const postAcademicsDoc = await academicsRef.doc(postID).get();
                if (postAcademicsDoc.exists) {
                    postAcademicsDoc.ref.delete();
                }
                const postCashMoneyDoc = await cashMoneyRef.doc(postID).get();
                if (postCashMoneyDoc.exists) {
                    postCashMoneyDoc.ref.delete();
                }
                const postOpportunityDoc = await opportunityRef.doc(postID).get();
                if (postOpportunityDoc.exists) {
                    postOpportunityDoc.ref.delete();
                }
                const postWellnessDoc = await wellnessRef.doc(postID).get();
                if (postWellnessDoc.exists) {
                    postWellnessDoc.ref.delete();
                }
                const postCSDoc = await humanitarianRef.doc(postID).get();
                if (postCSDoc.exists) {
                    postCSDoc.ref.delete();
                }
        const userFollowersSnapshot = await userFollowersRef.get();
        userFollowersSnapshot.forEach(async userDoc => {
            const postRef = admin
                .firestore()
                .collection('feeds')
                .doc(userDoc.id)
                .collection('userFeed');
            const postDoc = await postRef.doc(postID).get();
            if (postDoc.exists) {
                postDoc.ref.delete();
            }
        });
    

        // const repostUsersRef = admin
        //     .firestore()
        //     .collection('reposts')
        //     .doc(postID)
        //     .collection('postReposts');
        // const userFollowersSnapshot = await userFollowersRef.get();
    });

    exports.onDeleteOrgPost = functions.firestore
    .document('/posts/{orgID}/orgPosts/{postID}')
    .onDelete(async (snapshot, context) => {
        const orgID = context.params.orgID;
        const postID = context.params.postID;
        const userFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(orgID)
            .collection('orgFollowers');
        const userFollowersSnapshot = await userFollowersRef.get();
        userFollowersSnapshot.forEach(async userDoc => {
            const postRef = admin
                .firestore()
                .collection('feeds')
                .doc(userDoc.id)
                .collection('userFeed');
            const postDoc = await postRef.doc(postID).get();
            if (postDoc.exists) {
                postDoc.ref.delete();
            }
        });

        const cultureRef = admin
        .firestore()
        .collection('categories')
        .doc('Culture_Social')
        .collection('posts');
const academicsRef = admin
        .firestore()
        .collection('categories')
        .doc('Academics')
        .collection('posts');
const cashMoneyRef = admin
        .firestore()
        .collection('categories')
        .doc('Cash_Money')
        .collection('posts');   
const opportunityRef = admin
        .firestore()
        .collection('categories')
        .doc('Opportunity')
        .collection('posts'); 
const wellnessRef = admin
        .firestore()
        .collection('categories')
        .doc('Wellness')
        .collection('posts');
const humanitarianRef = admin
        .firestore()
        .collection('categories')
        .doc('Community_Service')
        .collection('posts');
        const postCultureDoc = await cultureRef.doc(postID).get();
        if (postCultureDoc.exists) {
            postCultureDoc.ref.delete();
        }
        const postAcademicsDoc = await academicsRef.doc(postID).get();
        if (postAcademicsDoc.exists) {
            postAcademicsDoc.ref.delete();
        }
        const postCashMoneyDoc = await cashMoneyRef.doc(postID).get();
        if (postCashMoneyDoc.exists) {
            postCashMoneyDoc.ref.delete();
        }
        const postOpportunityDoc = await opportunityRef.doc(postID).get();
        if (postOpportunityDoc.exists) {
            postOpportunityDoc.ref.delete();
        }
        const postWellnessDoc = await wellnessRef.doc(postID).get();
        if (postWellnessDoc.exists) {
            postWellnessDoc.ref.delete();
        }
        const postCSDoc = await humanitarianRef.doc(postID).get();
        if (postCSDoc.exists) {
            postCSDoc.ref.delete();
        }
    });

    exports.onDeleteEvent = functions.firestore
    .document('/events/{userID}/userEvents/{eventID}')
    .onDelete(async (snapshot, context) => {
        const userID = context.params.userID;
        const eventID = context.params.eventID;
        const userFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(userID)
            .collection('userFollowers');
        const userFollowersSnapshot = await userFollowersRef.get();
        userFollowersSnapshot.forEach(async userDoc => {
            const eventRef = admin
                .firestore()
                .collection('eventFeeds')
                .doc(userDoc.id)
                .collection('userEventFeed');
            const eventDoc = await eventRef.doc(eventID).get();
            if (eventDoc.exists) {
                eventDoc.ref.delete();
            }
        });

        const userRSVPsRef = admin
            .firestore()
            .collection('events')
            .doc(userID)
            .collection('userEvents')
            .doc(eventID)
            .collection('rsvpList');
        const userRSVPsSnapshot = await userRSVPsRef.get();
        userRSVPsSnapshot.forEach(async userDoc => {
            const eventUserRef = admin
                .firestore()
                .collection('events')
                .doc(userDoc.id)
                .collection('userEvents');
            const eventDoc = await eventUserRef.doc(eventID).get();
            if (eventDoc.exists) {
                eventDoc.ref.delete();
            }
        });

        const cultureRef = admin
        .firestore()
        .collection('categories')
        .doc('Culture_Social')
        .collection('events');
const academicsRef = admin
        .firestore()
        .collection('categories')
        .doc('Academics')
        .collection('events');
const cashMoneyRef = admin
        .firestore()
        .collection('categories')
        .doc('Cash_Money')
        .collection('events');   
const opportunityRef = admin
        .firestore()
        .collection('categories')
        .doc('Opportunity')
        .collection('events'); 
const wellnessRef = admin
        .firestore()
        .collection('categories')
        .doc('Wellness')
        .collection('events');
const humanitarianRef = admin
        .firestore()
        .collection('categories')
        .doc('Community_Service')
        .collection('events');
        const eventCultureDoc = await cultureRef.doc(eventID).get();
        if (eventCultureDoc.exists) {
            eventCultureDoc.ref.delete();
        }
        const eventAcademicsDoc = await academicsRef.doc(eventID).get();
        if (eventAcademicsDoc.exists) {
            eventAcademicsDoc.ref.delete();
        }
        const eventCashMoneyDoc = await cashMoneyRef.doc(eventID).get();
        if (eventCashMoneyDoc.exists) {
            eventCashMoneyDoc.ref.delete();
        }
        const eventOpportunityDoc = await opportunityRef.doc(eventID).get();
        if (eventOpportunityDoc.exists) {
            eventOpportunityDoc.ref.delete();
        }
        const eventWellnessDoc = await wellnessRef.doc(eventID).get();
        if (eventWellnessDoc.exists) {
            eventWellnessDoc.ref.delete();
        }
        const eventCSDoc = await humanitarianRef.doc(eventID).get();
        if (eventCSDoc.exists) {
            eventCSDoc.ref.delete();
        }

        //so i need to get a list of rsvp user ids and then delete the event from each of their user events
    });

    exports.onDeleteOrgEvent = functions.firestore
    .document('/events/{orgID}/orgEvents/{eventID}')
    .onDelete(async (snapshot, context) => {
        const orgID = context.params.orgID;
        const eventID = context.params.eventID;
        const userFollowersRef = admin
            .firestore()
            .collection('followers')
            .doc(orgID)
            .collection('orgFollowers');
        const userFollowersSnapshot = await userFollowersRef.get();
        userFollowersSnapshot.forEach(async userDoc => {
            const eventRef = admin
                .firestore()
                .collection('eventFeeds')
                .doc(userDoc.id)
                .collection('userEventFeed');
            const eventDoc = await eventRef.doc(eventID).get();
            if (eventDoc.exists) {
                eventDoc.ref.delete();
            }
        });
        const cultureRef = admin
        .firestore()
        .collection('categories')
        .doc('Culture_Social')
        .collection('events');
const academicsRef = admin
        .firestore()
        .collection('categories')
        .doc('Academics')
        .collection('events');
const cashMoneyRef = admin
        .firestore()
        .collection('categories')
        .doc('Cash_Money')
        .collection('events');   
const opportunityRef = admin
        .firestore()
        .collection('categories')
        .doc('Opportunity')
        .collection('events'); 
const wellnessRef = admin
        .firestore()
        .collection('categories')
        .doc('Wellness')
        .collection('events');
const humanitarianRef = admin
        .firestore()
        .collection('categories')
        .doc('Community_Service')
        .collection('events');
        const eventCultureDoc = await cultureRef.doc(eventID).get();
        if (eventCultureDoc.exists) {
            eventCultureDoc.ref.delete();
        }
        const eventAcademicsDoc = await academicsRef.doc(eventID).get();
        if (eventAcademicsDoc.exists) {
            eventAcademicsDoc.ref.delete();
        }
        const eventCashMoneyDoc = await cashMoneyRef.doc(eventID).get();
        if (eventCashMoneyDoc.exists) {
            eventCashMoneyDoc.ref.delete();
        }
        const eventOpportunityDoc = await opportunityRef.doc(eventID).get();
        if (eventOpportunityDoc.exists) {
            eventOpportunityDoc.ref.delete();
        }
        const eventWellnessDoc = await wellnessRef.doc(eventID).get();
        if (eventWellnessDoc.exists) {
            eventWellnessDoc.ref.delete();
        }
        const eventCSDoc = await humanitarianRef.doc(eventID).get();
        if (eventCSDoc.exists) {
            eventCSDoc.ref.delete();
        }

        const userRSVPsRef = admin
            .firestore()
            .collection('events')
            .doc(orgID)
            .collection('orgEvents')
            .doc(eventID)
            .collection('rsvpList');
        const userRSVPsSnapshot = await userRSVPsRef.get();
        userRSVPsSnapshot.forEach(async userDoc => {
            const eventUserRef = admin
                .firestore()
                .collection('events')
                .doc(userDoc.id)
                .collection('userEvents');
            const eventDoc = await eventUserRef.doc(eventID).get();
            if (eventDoc.exists) {
                eventDoc.ref.delete();
            }
        });

    });


exports.toggleOrgEvents = functions.firestore
    .document('/following/{userID}/orgFollowing/{orgID}')
    .onUpdate(async (change, context) => {
        const userID = context.params.userID;
        const orgID = context.params.orgID;
        const isToggled2 = change.after.data().isToggled;
        const isToggled1 = (await admin.firestore().collection('following').doc(userID).collection('orgFollowing').doc(orgID).get('isToggled'));

        const orgEventsRef = admin
            .firestore()
            .collection('events')
            .doc(orgID)
            .collection('orgEvents');
        const userEventFeedRef = admin
            .firestore()
            .collection('eventFeeds')
            .doc(userID)
            .collection('userEventFeed');

        const userEventFeed1Ref = admin
            .firestore()
            .collection('eventFeeds')
            .doc(userID)
            .collection('userEventFeed')
            .where('orgID', '==', orgID);
        const OrgEventsSnapshot = await orgEventsRef.get(); 
        const userEvents1Snapshot = await userEventFeed1Ref.get();

        if (isToggled2) {
            OrgEventsSnapshot.forEach(doc => {
                if (doc.exists) {
                    userEventFeedRef.doc(doc.id).set(doc.data());
                }
            });
        } else {
            userEvents1Snapshot.forEach(doc => {
                if (doc.exists) {
                    doc.ref.delete();
                }
            });
        }

    });

// exports.untoggleOrgEvents = functions.firestore
// .document('/following/{userID}/orgFollowing/{orgID}')
// .onUpdate(async (change, context) => {
//     const userID = context.params.userID;
//     const orgID = context.params.orgID;
//     const isToggled = change.after.data();
//     const isToggled1 = (await admin.firestore().collection('following').doc(userID).collection('orgFollowing').doc(orgID).get('isToggled'));


//     const userEventFeed1Ref = admin
//         .firestore()
//         .collection('eventFeeds')
//         .doc(userID)
//         .collection('userEventFeed')
//         .where('senderID', '==', orgID);

//         if(isToggled){

//         const userEvents1Snapshot = await userEventFeed1Ref.get();
//         userEvents1Snapshot.forEach(doc => {
//             if (doc.exists) {
//                 doc.ref.delete();
//             }
//         });

//     }
// });


// exports.onUntoggleOrgEvents = functions.firestore
//     .document('/calendarOrgs/{userID}/toggledOrgs/{orgID}')
//     .onDelete(async (snapshot, context) => {
//         const userID = context.params.userID;
//         const orgID = context.params.orgID;
//         const userEventFeedRef = admin
//             .firestore()
//             .collection('eventFeeds')
//             .doc(userID)
//             .collection('userEventFeed')
//             .where('senderID', '==', orgID);
//         const userEventsSnapshot = await userEventFeedRef.get();
//         userEventsSnapshot.forEach(doc => {
//             if (doc.exists) {
//                 doc.ref.delete();
//             }
//         });

//     });

exports.onUploadOrgEvent = functions.firestore
    .document('/events/{orgID}/orgEvents/{eventID}')
    .onCreate(async (snapshot, context) => {
        console.log(snapshot.data());
        const orgID = context.params.orgID;
        const eventID = context.params.eventID;
        const userToggledOrgsRef = admin
            .firestore()
            .collection('followers')
            .doc(orgID)
            .collection('orgFollowers');
        const userToggledOrgsSnapshot = await userToggledOrgsRef.get();
        userToggledOrgsSnapshot.forEach(doc => {
            if (doc.data().isToggled) {
                admin
                    .firestore()
                    .collection('eventFeeds')
                    .doc(doc.id)
                    .collection('userEventFeed')
                    .doc(eventID)
                    .set(snapshot.data());
            }
        });
    });

exports.onUpdateOrgEvent = functions.firestore
    .document('/events/{orgID}/orgEvents/{eventID}')
    .onUpdate(async (snapshot, context) => {
        const orgID = context.params.orgID;
        const eventID = context.params.eventID;
        const newEventData = snapshot.after.data();
        console.log(newEventData);
        const userToggledOrgsRef = admin
            .firestore()
            .collection('followers')
            .doc(orgID)
            .collection('orgFollowers');
        const userToggledOrgsSnapshot = await userToggledOrgsRef.get();
        userToggledOrgsSnapshot.forEach(async userDoc => {
            const eventRef = admin
                .firestore()
                .collection('eventFeeds')
                .doc(userDoc.id)
                .collection('userEventFeed');
            const eventDoc = await eventRef.doc(eventID).get();
            if (eventDoc.exists) {
                eventDoc.ref.update(newEventData);
            }
        });
    });

exports.onCreateActivityFeedItem = functions.firestore
.document('/activities/{userID}/userActivityFeed/{activityID}')
.onCreate(async (snapshot, context) => {

    // 1) Get user connected to the feed
    const userID = context.params.userID;
    let body;
    let username;
    let typeID; 
    const userRef = admin.firestore().collection('users').doc(userID);
    const doc = await userRef.get();

    // 2) Once we have user, check if they have a notification token
    const androidNotificationToken = doc.data()
    .androidNotificationToken;
    
    const activity = snapshot.data();
    
    //admin.messaging().send(message);
    if(androidNotificationToken) {
        // send notification
        
        if(activity.username) {
            username = activity.username;
        } else {
            username = "Anonymous User";
        }

        switch (activity.type) {
            case "likeUser":
              {
                body = `${username} liked your post`;
                typeID = activity.postID;
              }
              break;
            case "repostUser":
              {
                body = `${username} reposted your post`;
                typeID = activity.postID;
              }
              break;
            case "commentUser":
              {
                body = `${username} commented on your post`;
                typeID = activity.postID;
              }
              break;
            case "likeOrg":
              {
                body = `${username} liked your organization's post`;
                typeID = activity.postID;
              }
              break;
            case 'repostOrg':
              {
                body = `${username} reposted your organization's post`;
                typeID = activity.postID;
              }
              break;
            case "commentOrg":
              {
                body = `${username} commented on your organization's post`;
                typeID = activity.postID;
              }
              break;
            case "followUser":
              {
                body = `${username} followed you`;
                typeID = activity.userID;
              }
              break;
            case "followOrg":
              {
                body = `${username} joined your organization page`;
                typeID = activity.orgID;
              }
              break;
            case "post":
              {
                body = `${username} posted an update`;
                typeID = activity.postID;
              }
              break;
            case "event":
              {
                body = `${username} created a new event`;
                typeID = activity.eventID;
              }
              break;
            case "eventStart":
              {
                body = `${username} event is starting soon`;
                typeID = activity.eventID;
              }
              break;
            case "admin":
              {
                body = `${username} has given you admin access`;
                typeID = activity.orgID;
              }
              break;
            default:
                body = `${username}`;
          }

          // 4) Create message for push notification
          const message = {
            notification: {body: body, title: 'Vybrnt', click_action: FLUTTER_NOTIFICATION_CLICK, icon: activity.profileImageURL },
            token: androidNotificationToken,
            data: {userID: userID, typeID: typeID, type: activity.type, isOrg: activity.isOrg, orgID: activity.orgID }
            
        };
          // 5) Send message with admin.messaging()

          try {
            admin.messaging().send(message);
             console.log("Successfully sent message", response);
        }
        catch (error) {
            console.log("Error sending message", error);
        }
    } else {
        console.log("No token for user, cannot send notification");
    }

  
});

