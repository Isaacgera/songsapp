import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songsapp/engine/audioplayer_provider.dart';
import 'package:songsapp/screens/home.dart';
import 'package:songsapp/screens/magazinescreen.dart';

void main() {
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
      home: const Home(),
    );
  }
}
