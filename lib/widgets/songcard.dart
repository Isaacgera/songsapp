import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/models/song.dart';
import 'package:songsapp/screens/lyricscreen.dart';
import 'package:songsapp/screens/songfullscreen.dart';

class SongCard extends StatefulWidget {
  const SongCard({super.key, required this.song});

  final Song song;

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Song Clicked");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SongFullPage(song: widget.song)));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: SizedBox(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Image.asset(
                    'imgs/songtmb.jpg',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          widget.song.title,
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Duration.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inconsolata(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("paper clicked");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LyricsPage(
                                lyricsPath: widget.song.lyricspath)));
                  },
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'icons/paper.png',
                      scale: 7,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Play Clicked");
                  },
                  child: const Opacity(
                    opacity: 0.5,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 64,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
