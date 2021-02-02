const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp({options: functions.config().functions,
    storageBucket: 'vybrnt-production-release.appspot.com',
    // storageBucket: 'vybrnt-release-d73d5.appspot.com',  //
});

const db = admin.firestore();

module.exports = {db, admin}

