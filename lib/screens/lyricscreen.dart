import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/widgets/lyricscard.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({super.key, required this.lyricsPath});

  final String lyricsPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lyrics",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Center(child: LyricsCard(lyricsPath: lyricsPath))),
    );
  }
}
