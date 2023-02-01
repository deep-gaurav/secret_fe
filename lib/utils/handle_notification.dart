import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.dart';
import 'package:secret_fe/main.dart';
import 'dart:developer' as develop;

handleNotification(
  MyAppState mainApp,
) async {
  final fcmToken = await FirebaseMessaging.instance.getToken(
    vapidKey: kIsWeb
        ? "BJGeC-aApXje-4clNHcmgp8xJ7j0UmbVLWhIFtkwOAtC80uSwpK6rFQSS54B-9u9r9Zj3Kcp1prt0yjY8UeLBx4"
        : null,
  );
  mainApp.client
      .execute(SetNotificationTokenMutation(
          variables: SetNotificationTokenArguments(token: fcmToken!)))
      .then(
    (value) {
      develop.log(
          "Notification token sent to server ${value.data?.setNotificationToken}");
    },
  );
  var message = await FirebaseMessaging.instance.getInitialMessage();
  if (message != null && message.data['url'] != null) {
    mainApp.context.go(message.data['url']);
  }
  FirebaseMessaging.onMessageOpenedApp.listen((notif) {
    if (notif.data['url'] != null) {
      mainApp.context.go(notif.data['url']);
    }
  });
}
