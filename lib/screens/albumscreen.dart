import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:songsapp/engine.dart';
import 'package:songsapp/engine/audioplayer_provider.dart';
import 'package:songsapp/models/album.dart';
import 'package:songsapp/screens/songscreen.dart';
import 'package:songsapp/widgets/albumcard.dart';
import 'package:songsapp/widgets/mydrawer.dart';

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
    final value = Provider.of<AudioPlayerProvider>(context);
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
      drawer: MyDrawer(onChangeIndex: widget.onChangeIndex),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: albums.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GestureDetector(
            onTap: () {
              value.allSongs = albums[index].songs;
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
