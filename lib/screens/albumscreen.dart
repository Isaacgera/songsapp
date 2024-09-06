import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/engine.dart';
import 'package:songsapp/models/album.dart';
import 'package:songsapp/screens/aboutscreen.dart';
import 'package:songsapp/screens/songscreen.dart';
import 'package:songsapp/widgets/albumcard.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

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
        automaticallyImplyLeading: false,
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.info,
                    size: 35,
                  )))
        ],
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
