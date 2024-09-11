import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/models/song.dart';
import 'package:songsapp/widgets/lyricscard.dart';

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
          "Song",
          style: GoogleFonts.inconsolata(
              fontSize: 28, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                width: 350,
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      // "imgs/songmain.png",
                      child: const Image(
                        image: AssetImage('assets/imgs/songmain.png'),
                        width: 300,
                        height: 300,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 5),
                      width: 300,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        widget.song.title,
                        style: GoogleFonts.inconsolata(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      width: 300,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        widget.song.subtitle,
                        style: GoogleFonts.inconsolata(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //gap b/w logo and slider
              const SizedBox(
                height: 10,
              ),

              //Row for controllers
              SizedBox(
                width: 700,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //slider
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                          pressedElevation: 8,
                          disabledThumbRadius: 6,
                        )),
                        child: Slider(
                          min: 0,
                          max: 100,
                          value: 50,
                          thumbColor: Colors.black87,
                          activeColor: Colors.black45,
                          onChanged: (double value) {
                            print("Slider changed");
                          },
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "00:00",
                              style: GoogleFonts.inconsolata(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "05:00",
                              style: GoogleFonts.inconsolata(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //contoles
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.shuffle_rounded, size: 50)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_previous_rounded,
                                  size: 50)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.pause_outlined, size: 50)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_next_rounded,
                                  size: 50)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.repeat_rounded, size: 50))
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Lyrics

              LyricsCard(
                  title: widget.song.title, lyricsPath: widget.song.lyricspath)
            ],
          ),
        ),
      ),
    );
  }
}
