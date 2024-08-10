import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({super.key, required this.lyrics});

  final String lyrics;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Song title",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text(lyrics == "none" ? "Coming Soon" : "lyrics")),
    );
  }
}
