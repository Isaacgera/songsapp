import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

class NotificationProvider {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  Future<void> init() async {
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    tz.initializeTimeZones();

    // Check for Android 13+ notification permission
    if (Platform.isAndroid && (await _checkNotificationPermission()) != true) {
      await _requestNotificationPermission();
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()!
          .requestNotificationsPermission();
    }

    // Check for Notification permission status
  }

  Future<bool> _checkNotificationPermission() async {
    if (Platform.isAndroid && (await Permission.notification.isGranted)) {
      return true;
    } else {
      return false;
    }
  }

  // Request Notification permiss

  Future<void> _requestNotificationPermission() async {
    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    final bool? grantedNotificationPermission =
        await androidImplementation?.requestNotificationsPermission();
    if (Platform.isAndroid &&
        (await Permission.notification.request().isGranted) &&
        grantedNotificationPermission!) {
      print('Notification permission granted.');
    } else {
      print('Notification permission denied.');
    }
  }

  Future<void> scheduleMultipleNotifications() async {
    List<Map<String, dynamic>> notificationSchedules = [
      {
        'id': 1,
        'time': const TimeOfDay(hour: 5, minute: 0),
        'message':
            "Jesus Christ's Grace is New every Morning. Start your day with God. \nయేసుక్రీస్తు కృప ప్రతి ఉదయం కొత్తది. దేవునితో మీ రోజు ప్రారంభించండి."
      },
      {
        'id': 2,
        'time': const TimeOfDay(hour: 10, minute: 0),
        'message':
            "Take a moment to read and meditate on God's word.\nదేవుని వాక్యాన్ని చదవడానికి, ధ్యానించుటకు కొంత సమయం కేటాయించండి."
      },
      {
        'id': 3,
        'time': const TimeOfDay(hour: 15, minute: 0),
        'message':
            "Prayer is talking with God. Lord's waiting to hear from you. \nప్రార్థన అంటే దేవునితో మాట్లాడటం. ప్రభువు మీ నుండి వినడానికి వేచి ఉన్నారు."
      },
      {
        'id': 4,
        'time': const TimeOfDay(hour: 21, minute: 0),
        'message':
            "Share God's love with those you love. Family devotion time! \nమీరు ప్రేమించే వారితో దేవుని వాక్యాన్ని పంచుకోండి. కుటుంబ ఆరాధన సమయం!"
      },
    ];

    for (var schedule in notificationSchedules) {
      await _scheduleNotification(
        schedule['id'],
        'Prayer Fellowship',
        schedule['message'],
        schedule['time'],
      );
    }
  }

  Future<void> _scheduleNotification(
      int id, String title, String body, TimeOfDay time) async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'daily_notification_channel_id',
      'Daily Notifications',
      channelDescription: 'Notifications scheduled throughout the day',
      importance: Importance.max,
      priority: Priority.high,
    );
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      _nextInstanceOfTime(time),
      platformChannelSpecifics,
      androidAllowWhileIdle: true,
      matchDateTimeComponents: DateTimeComponents.time,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  tz.TZDateTime _nextInstanceOfTime(TimeOfDay time) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
        tz.local, now.year, now.month, now.day, time.hour, time.minute);

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }

  // Method to trigger a notification immediately with a download message
  Future<void> downloadNotifier(String fileName) async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'download_notification_channel_id',
      'Download Notifications',
      channelDescription: 'Notifications related to download events',
      importance: Importance.max,
      priority: Priority.high,
    );
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      100, // Unique ID for this notification
      'Download Completed',
      '$fileName been successfully downloaded!',
      platformChannelSpecifics,
      payload: 'download_payload',
    );
  }
}
