const functions = require('firebase-functions');
const { parseAsync } = require('json2csv');
const { v4: uuidv4 } = require('uuid');
const fs = require('fs');
const path = require('path');
const os = require('os');
const { db, admin } = require('./admin')

const generateUsersCsv = functions.region('us-east4').pubsub
  .topic("generate-users-csv")
  .onPublish(async message => {

    // gets the documents from the firestore collection
    const usersSnapshot = await db
      .collection("users")
      .get();

    const users = usersSnapshot.docs.map(doc => doc.data());

    // csv field headers
    const fields = [
      'bannerImageUrl',
      'bio',
      'email',
      'major',
      'primaryColor',
      'profileImageUrl',
      'profileName',
     'secondaryColor',
      
];

    // get csv output
    const output = await parseAsync(users, { fields });
    //const storage = gcs.bucket('vybrnt-release-d73d5.appspot.com');

    // generate filename
    const dateTime = new Date().toISOString().replace(/\W/g, "");
    const filename = `users_${dateTime}.csv`;

    const tempLocalFile = path.join(os.tmpdir(), filename);

    return new Promise((resolve, reject) => {
      //write contents of csv into the temp file
      fs.writeFile(tempLocalFile, output, error => {
        if (error) {
          reject(error);
          console.log(error);
          return;
        }
        const bucket = admin.storage().bucket();

        // upload the file into the current firebase project default bucket
        bucket
           .upload(tempLocalFile, {
            // Workaround: firebase console not generating token for files
            // uploaded via Firebase Admin SDK
            // https://github.com/firebase/firebase-admin-node/issues/694
            metadata: {
              metadata: {
                firebaseStorageDownloadTokens: uuidv4(),
              }
            },
          })
          .then(() => resolve())
          .catch(error => console.log(error));
      });
    });
  });

  const generateOrgsCsv = functions.region('us-east4').pubsub
  .topic("generate-orgs-csv")
  .onPublish(async message => {

    // gets the documents from the firestore collection
    const orgsSnapshot = await db
      .collection("organizations")
      .get();

    const orgs = orgsSnapshot.docs.map(doc => doc.data());

    // csv field headers
    const fields = [
      'abbv', 'adminTitle',
      'facebookURL',
      'instagramURL',
      'twitterURL',
      'linkedInURL',
      'missionStatement',
      'bannerImageUrl',
      'officeLocation',
      'email',
      'verified',
      'websiteURL',
      'primaryColor',
      'profileImageUrl',
      'name',
     'secondaryColor',
      
];

    // get csv output
    const output = await parseAsync(orgs, { fields });
    //const storage = gcs.bucket('vybrnt-release-d73d5.appspot.com');

    // generate filename
    const dateTime = new Date().toISOString().replace(/\W/g, "");
    const filename = `orgs_${dateTime}.csv`;

    const tempLocalFile = path.join(os.tmpdir(), filename);

    return new Promise((resolve, reject) => {
      //write contents of csv into the temp file
      fs.writeFile(tempLocalFile, output, error => {
        if (error) {
          reject(error);
          console.log(error);
          return;
        }
        const bucket = admin.storage().bucket();

        // upload the file into the current firebase project default bucket
        bucket
           .upload(tempLocalFile, {
            // Workaround: firebase console not generating token for files
            // uploaded via Firebase Admin SDK
            // https://github.com/firebase/firebase-admin-node/issues/694
            metadata: {
              metadata: {
                firebaseStorageDownloadTokens: uuidv4(),
              }
            },
          })
          .then(() => resolve())
          .catch(error => console.log(error));
      });
    });
  });


  const generateEventsCsv = functions.region('us-east4').pubsub
  .topic("generate-events-csv")
  .onPublish(async message => {

    // gets the documents from the firestore collection
    const eventsSnapshot = await db
      .collection("events")
      .get();

      //List of user and org IDs
    const eventOwners = eventsSnapshot.docs.map(doc => doc.id);
    const orgsSnapshot = await db.collection("organizations").get();
    const orgIDs = orgsSnapshot.docs.map(doc => doc.id);


    var completeEventList = [];

    const eventPromise = eventOwners.map(async id => {
      var eventListSnapshot;
      if(orgIDs.includes(id)) {
        eventListSnapshot = await db.collection("events").doc(id).collection("orgEvents").get();
      } else {
        eventListSnapshot = await db.collection("events").doc(id).collection("userEvents").get();
      }
      
      return eventListSnapshot;
    });

    const eventList = await Promise.all(eventPromise);

    
    eventList.forEach(snapshot => {
      
      const events = snapshot.docs.map(doc => 
         doc.data()
  
        //completeEventList.push(data);
       );
       completeEventList = completeEventList.concat(events);
    });
    
  

  

    // csv field headers
    const fields = [
      'endTime', 'eventCaption',
      'eventImageUrl', 'eventLocation', 'eventName', 
      'eventUrl',
      'orgID', 'senderID', 'startTime', 'timeStamp',
      
];

    // get csv output
    const output = await parseAsync(completeEventList, { fields });

    // generate filename
    const dateTime = new Date().toISOString().replace(/\W/g, "");
    const filename = `events_${dateTime}.csv`;

    const tempLocalFile = path.join(os.tmpdir(), filename);

    return new Promise((resolve, reject) => {
      //write contents of csv into the temp file
      fs.writeFile(tempLocalFile, output, error => {
        if (error) {
          reject(error);
          console.log(error);
          return;
        }
        const bucket = admin.storage().bucket();

        // upload the file into the current firebase project default bucket
        bucket
           .upload(tempLocalFile, {
            // Workaround: firebase console not generating token for files
            // uploaded via Firebase Admin SDK
            // https://github.com/firebase/firebase-admin-node/issues/694
            metadata: {
              metadata: {
                firebaseStorageDownloadTokens: uuidv4(),
              }
            },
          })
          .then(() => resolve())
          .catch(error => console.log(error));
      });
    });
  });

  const generatePostsCsv = functions.region('us-east4').pubsub
  .topic("generate-posts-csv")
  .onPublish(async message => {

    // gets the documents from the firestore collection
    const postsSnapshot = await db
      .collection("posts")
      .get();
    const orgsSnapshot = await db.collection("organizations").get();
    const orgIDs = orgsSnapshot.docs.map(doc => doc.id);

    const postOwners = postsSnapshot.docs.map(doc => doc.data());

    var completePostList = [];

    for (let i = 0; i < postOwners.length; i++) {
      var postList;
      if(orgIDs.includes(postOwners[i].id)) {
        postList = postOwners[i].collection("orgPosts").get();
      } else {
        postList = postOwners[i].collection("userPosts").get();
      }
      
      completePostList.push(postList);
    }

    // csv field headers
    const fields = [
      'eventID', 'postBody',
      'postHeader', 'postType', 'repostID', 
      'postUrl', 'isOrg',
      'orgID', 'senderID', 'postImageURL', 'postTime',
      
];

    // get csv output
    const output = await parseAsync(completePostList, { fields });
    //const storage = gcs.bucket('vybrnt-release-d73d5.appspot.com');

    // generate filename
    const dateTime = new Date().toISOString().replace(/\W/g, "");
    const filename = `posts_${dateTime}.csv`;

    const tempLocalFile = path.join(os.tmpdir(), filename);

    return new Promise((resolve, reject) => {
      //write contents of csv into the temp file
      fs.writeFile(tempLocalFile, output, error => {
        if (error) {
          reject(error);
          console.log(error);
          return;
        }
        const bucket = admin.storage().bucket();

        // upload the file into the current firebase project default bucket
        bucket
           .upload(tempLocalFile, {
            // Workaround: firebase console not generating token for files
            // uploaded via Firebase Admin SDK
            // https://github.com/firebase/firebase-admin-node/issues/694
            metadata: {
              metadata: {
                firebaseStorageDownloadTokens: uuidv4(),
              }
            },
          })
          .then(() => resolve())
          .catch(error => console.log(error));
      });
    });
  });
//   const generateFollowersCsv = functions.region('us-east4').pubsub
//   .topic("generate-followers-csv")
//   .onPublish(async message => {

//     // gets the documents from the firestore collection
//     const followersSnapshot = await db
//       .collection("followers")
//       .get();

//     const followers = followersSnapshot.docs.map(doc => doc.data());

//     // csv field headers
//     const fields = [
//       'abbv', 'adminTitle',
//       'facebookURL',
//       'instagramURL',
//       'twitterURL',
//       'linkedInURL',
//       'missionStatement',
//       'bannerImageUrl',
//       'officeLocation',
//       'email',
//       'verified',
//       'websiteURL',
//       'primaryColor',
//       'profileImageUrl',
//       'name',
//      'secondaryColor',
      
// ];

//     // get csv output
//     const output = await parseAsync(followers, { fields });
//     //const storage = gcs.bucket('vybrnt-release-d73d5.appspot.com');

//     // generate filename
//     const dateTime = new Date().toISOString().replace(/\W/g, "");
//     const filename = `followers_${dateTime}.csv`;

//     const tempLocalFile = path.join(os.tmpdir(), filename);

//     return new Promise((resolve, reject) => {
//       //write contents of csv into the temp file
//       fs.writeFile(tempLocalFile, output, error => {
//         if (error) {
//           reject(error);
//           console.log(error);
//           return;
//         }
//         const bucket = admin.storage().bucket();

//         // upload the file into the current firebase project default bucket
//         bucket
//            .upload(tempLocalFile, {
//             // Workaround: firebase console not generating token for files
//             // uploaded via Firebase Admin SDK
//             // https://github.com/firebase/firebase-admin-node/issues/694
//             metadata: {
//               metadata: {
//                 firebaseStorageDownloadTokens: uuidv4(),
//               }
//             },
//           })
//           .then(() => resolve())
//           .catch(error => console.log(error));
//       });
//     });
//   });
module.exports = {generateUsersCsv, generateOrgsCsv, generateEventsCsv, generatePostsCsv};
