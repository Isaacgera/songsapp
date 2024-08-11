import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricsCard extends StatelessWidget {
  final String lyricsPath;
  const LyricsCard({super.key, required this.lyricsPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        width: 350,
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Lyrics",
                    style: GoogleFonts.inconsolata(
                      fontSize: 16,
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'icons/paper.png',
                      scale: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                    (lyricsPath == "none") ? "Comming Soon" : "la lala laa"))
          ],
        ));
  }
}

// Text((lyricsPath == "none") ? "Comming Soon" : "la lala laa"));
