import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/models/album.dart';
import 'package:songsapp/screens/songscreen.dart';
import 'package:songsapp/widgets/albumcard.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key, required this.albums});
  final List<Album> albums;

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
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
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: widget.albums.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SongsPage(
                          songs: widget.albums[index].songs,
                        )),
              );
            },
            child: AlbumCard(
              title: widget.albums[index].title,
              count: widget.albums[index].songs.length,
            ),
          ),
        ),
      ),
    );
  }
}
