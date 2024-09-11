import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/models/song.dart';
import 'package:songsapp/screens/lyricscreen.dart';

class SongCard extends StatefulWidget {
  const SongCard({super.key, required this.song});

  final Song song;

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SizedBox(
        height: 70,
        child:
            // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
          Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: const Image(
              image: AssetImage('assets/imgs/songtmb.jpg'),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    widget.song.title,
                    style: GoogleFonts.inconsolata(
                      fontSize: 20,
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(0, -4, 0),
                    child: Text(
                      "Duration.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inconsolata(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //   ],
          // ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    print("paper clicked");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LyricsPage(
                                title: widget.song.title,
                                lyricsPath: widget.song.lyricspath)));
                  },
                  child: const Opacity(
                      opacity: 0.5,
                      child: Image(
                        image: AssetImage('assets/icons/paper.png'),
                        width: 4 * 10, // multiply by 10 to scale up by 7 times
                        height: 4 * 10, // multiply by 10 to scale up by 7 times
                      )),
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
          ),
        ]),
      ),
    );
  }
}
