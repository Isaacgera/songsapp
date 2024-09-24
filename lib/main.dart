import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songsapp/engine/audioplayer_provider.dart';
import 'package:songsapp/engine/notification_provider.dart';
import 'package:songsapp/screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  NotificationProvider notificationProvider = NotificationProvider();
  await notificationProvider.init();
  await notificationProvider.scheduleMultipleNotifications();
  runApp(
    ChangeNotifierProvider(
        create: (context) => AudioPlayerProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Songs App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      //call splast instad home
      home: const SplashScreen(),
    );
  }
}
