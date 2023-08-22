const firebase = require("firebase-admin");
const credentials = require("./bobtennisclub-firebase.json");

firebase.initializeApp({
  credential: firebase.credential.cert(credentials),
});

module.exports = firebase;