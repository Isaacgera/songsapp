import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/engine.dart';
import 'package:songsapp/models/album.dart';
import 'package:songsapp/screens/aboutscreen.dart';
import 'package:songsapp/screens/songscreen.dart';
import 'package:songsapp/screens/yearlytopicscreen.dart';
import 'package:songsapp/widgets/albumcard.dart';
import 'package:songsapp/widgets/drawercard.dart';

class AlbumPage extends StatefulWidget {
  final Function(int) onChangeIndex;
  const AlbumPage({super.key, required this.onChangeIndex});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  //Engion
  Engine eng = Engine();
  late List<Album> albums = eng.getAlbums();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Albums",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
            // fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
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
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/imgs/logo.png',
                        height: 90, fit: BoxFit.cover),
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
                            widget.onChangeIndex(1);
                          },
                          icon: Icons.search_rounded,
                        ),
                        DrawerTile(
                          title: "Songs Book",
                          onTap: () {
                            Navigator.pop(context);
                            widget.onChangeIndex(2);
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
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "V 1.0",
                style: GoogleFonts.inconsolata(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: albums.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SongsPage(
                          songs: albums[index].songs,
                        )),
              );
            },
            child: AlbumCard(
              title: albums[index].title,
              count: albums[index].songs.length,
            ),
          ),
        ),
      ),
    );
  }
}
