const functions = require('firebase-functions');
const { db, admin } = require('./admin')


const onCreateActivityFeedItem = functions.firestore
.document('/activities/{userID}/userActivityFeed/{activityID}')
.onCreate(async (snapshot, context) => {

    // 1) Get user connected to the feed
    const userID = context.params.userID;
    const activityID = context.params.activityID;
    const userRef = db.collection('users').doc(userID);
    const doc = await userRef.get();
    

    // 2) Once we have user, check if they have a notification token
    const androidNotificationToken = doc.data()
    .androidNotificationToken;
    
    const activity = snapshot.data();
    let activityString = JSON.stringify(activity);
     
    if(androidNotificationToken) {
        
        let title = getNotificationTitle(activity);
        let body = getNotificationBody(activity);

          // 4) Create message for push notification
          const message = {
            notification: {body: body, title: title },
            
            token: androidNotificationToken,
            
            data: {activity: activityString, click_action: "FLUTTER_NOTIFICATION_CLICK", id: activityID }
            // data: {userID: userID, typeID: typeID, type: activity.type, isOrg: isOrg, orgID: activity.orgID, click_action: 'FLUTTER_NOTIFICATION_CLICK',  icon: activity.profileImageURL, id: activity.activityID, status: 'done' }

        };

        //const message = {notification: {body: "this is a body", title: "this is a title",}, token: androidNotificationToken, data: {click_action: "FLUTTER_NOTIFICATION_CLICK", id: "1"}, };

       
          // 5) Send message with admin.messaging()

          try {
            const response = admin.messaging().send(message);
             console.log("Successfully sent message", response);
        }
        catch (error) {
            console.log("Error sending message", error);
        }
    } else {
        console.log("No token for user, cannot send notification");
    }

  
});

function getNotificationTitle(activity) {
    let titleSubject = activity.titleSubject;
    let title;

    switch (activity.activityType) {
        case 'like':
          {
              title = '';
              return title;
          }
        case 'repost':
          {
            title = '';
            return title;
          }
        case 'comment':
          {
            if (activity.ownerType === 'user') {
                 title = `${titleSubject} commented on your post`;
                
            }
            if (activity.ownerType === 'org') {
                 title = `${titleSubject} commented your organization's post`;
               }   
           return title;
           
          }
        case 'post':
          {title = `${titleSubject} posted a new update`;
            return title;
          }
        case 'event':
          { title = `${titleSubject} posted a new event`;
            return title;
          }
        case 'follow':
          {title = '';
            return title;
          }
        case 'admin':
          {
            return titleSubject;
          }
        default:
          return titleSubject;
      }
}

function getNotificationBody(activity) {
    let titleSubject = activity.titleSubject;
    let bodySubject = activity.bodySubject;
    let body;

    switch (activity.activityType) {
        case 'like':
          {
            if (activity.ownerType === 'user') {
                body = `${titleSubject} liked your post`;
            }
            if (activity.ownerType === 'org') {
                body = `${titleSubject} liked your organization's post`;
            }
            return body;
          }
        case 'repost':
          {
            if (activity.ownerType === 'user') {
                body = `${titleSubject} shared your post`;
            }
            if (activity.ownerType === 'org') {
                body = `${titleSubject} shared your organization's post`;
            }
            return body;
          }
        case 'comment':
          {
              body = `${bodySubject}`;
            return body;
          }
        case 'post':
          {
            body = `${bodySubject}`;
            return body;
          }
        case 'event':
          {
              body = `${bodySubject}`;
            return body;
          }
        case 'follow':
          {
            if (activity.ownerType === 'user') {
                body = `${bodySubject} has followed you`;
            }
            if (activity.ownerType === 'org') {
                body = `${bodySubject} has joined ${titleSubject}'s page`;
            }
           return body;
          }
        case 'admin':
          {
             body = `${bodySubject} has given you admin access`;
            return body;
          }
        default:
          return bodySubject;
      }
}

const followVybrnt = functions.region('us-east4').pubsub
  .topic("follow-vybrnt")
  .onPublish(async message => {
    const usersSnapshot = await db
      .collection("users")
      .get();

    const users = usersSnapshot.docs.map(doc => doc.id);
    const vybrntID = 'cec10340-090e-11eb-a5dc-1d0e34e32b97';
    const orgFollowersSnapshot = await db.collection('followers').doc(vybrntID).collection('orgFollowers').get();
    const orgFollowers = orgFollowersSnapshot.docs.map(doc => doc.id);
    
    var i;
    for(i = 0; i < users.length; i++) {
      if(!orgFollowers.includes(users[i])) {
        db.collection('followers').doc(vybrntID).collection('orgFollowers').doc(users[i]).set({
          isToggled: true,
          notify: true,
        });
        db.collection('following').doc(users[i]).collection('orgFollowing').doc(vybrntID).set({
          abbv: 'Vybrnt',
          name: 'Vybrnt',
          profileImageUrl: 'https://firebasestorage.googleapis.com/v0/b/vybrnt-production-release.appspot.com/o/images%2Forgs%2ForgProfile_c320f73c-3634-4c35-b47f-9e289ae6750c.jpg?alt=media&token=78ade707-7cb2-4d28-86e5-6c3dff579c21',
          isToggled: true,
          notify: true,
        });
      }
    }
  });


module.exports = {onCreateActivityFeedItem, followVybrnt };