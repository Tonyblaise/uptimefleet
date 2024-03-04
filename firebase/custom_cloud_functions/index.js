const admin = require("firebase-admin/app");
admin.initializeApp();

const sendNotification = require("./send_notification.js");
exports.sendNotification = sendNotification.sendNotification;
