import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:songsapp/widgets/albumcard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget getAlbumPage() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      physics: const BouncingScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: AlbumCard(),
      ),
    );
  }

  Widget getSearchPage() {
    return const Center(
      child: Text("Search"),
    );
  }

  Widget getBookPage() {
    return const Center(
      child: Text("Book"),
    );
  }

  int selectedIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      getAlbumPage(),
      getSearchPage(),
      getBookPage(),
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
        padding: const EdgeInsets.symmetric(vertical: 10),
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
