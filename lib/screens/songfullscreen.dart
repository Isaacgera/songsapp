import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/models/song.dart';

class SongFullPage extends StatefulWidget {
  const SongFullPage({super.key, required this.song});
  final Song song;

  @override
  State<SongFullPage> createState() => _SongFullPageState();
}

class _SongFullPageState extends State<SongFullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Song Title",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("Songfull screen")),
    );
  }
}
