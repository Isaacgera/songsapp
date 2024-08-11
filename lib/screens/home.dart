import 'package:flutter/material.dart';
import 'package:songsapp/engine.dart';
import 'package:songsapp/models/album.dart';
import 'package:songsapp/screens/albumscreen.dart';
import 'package:songsapp/screens/bookscreen.dart';
import 'package:songsapp/screens/searchscreen.dart';
import 'package:songsapp/screens/songfullscreen.dart';
import 'package:songsapp/screens/songscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> pages = [];

  //Engion
  Engine eng = Engine();
  late List<Album> albums = eng.getAlbums();

  @override
  void initState() {
    super.initState();
    pages = [
      //remove later
      SongFullPage(song: albums[0].songs[0]),
      AlbumPage(albums: albums),
      const SearchPage(),
      const BookPage(),
    ];
  }

  void updatePage() {
    setState(() {});
  }

  double getOpacity(int index) {
    return selectedIndex == index ? 1 : 0.5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        color: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                selectedIndex = 0;
                updatePage();
              },
              child: Opacity(
                opacity: getOpacity(0),
                child: Image.asset(
                  'icons/albumbar.png',
                  scale: 7.5,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                selectedIndex = 1;
                updatePage();
              },
              child: Opacity(
                opacity: getOpacity(1),
                child: Image.asset(
                  'icons/searchbar.png',
                  scale: 7.5,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                selectedIndex = 2;
                updatePage();
              },
              child: Opacity(
                opacity: getOpacity(2),
                child: Image.asset(
                  'icons/bookbar.png',
                  scale: 7.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
