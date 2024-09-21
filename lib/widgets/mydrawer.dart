import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/screens/aboutscreen.dart';
import 'package:songsapp/screens/magazinescreen.dart';
import 'package:songsapp/screens/yearlytopicscreen.dart';
import 'package:songsapp/widgets/drawercard.dart';

class MyDrawer extends StatelessWidget {
  final Function(int) onChangeIndex;
  const MyDrawer({super.key, required this.onChangeIndex});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black45,
                  child: Image.asset('assets/imgs/logo.png',
                      height: 90, fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      DrawerTile(
                        title: "Albums",
                        onTap: () {
                          Navigator.pop(context);
                        },
                        icon: Icons.album_rounded,
                      ),
                      DrawerTile(
                        title: "Search",
                        onTap: () {
                          Navigator.pop(context);
                          onChangeIndex(1);
                        },
                        icon: Icons.search_rounded,
                      ),
                      DrawerTile(
                        title: "Songs Book",
                        onTap: () {
                          Navigator.pop(context);
                          onChangeIndex(2);
                        },
                        icon: Icons.book_rounded,
                      ),
                      DrawerTile(
                        title: "Yearly Topics",
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const YearlyTopicsPage()));
                        },
                        icon: Icons.table_rows_sharp,
                      ),
                      DrawerTile(
                        title: "Magazine",
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MagazinePage()));
                        },
                        icon: Icons.download_rounded,
                      ),
                      DrawerTile(
                        title: "About Us",
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutPage()));
                        },
                        icon: Icons.account_box_rounded,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "V 1.0",
              style: GoogleFonts.inconsolata(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
