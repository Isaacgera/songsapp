import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:songsapp/engine/audioplayer_provider.dart';
import 'package:songsapp/models/song.dart';
import 'package:songsapp/screens/songfullscreen.dart';
import 'package:songsapp/widgets/songcard.dart';

class SongsPage extends StatefulWidget {
  const SongsPage({super.key, required this.songs});
  final List<Song> songs;

  @override
  State<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> {
  @override
  Widget build(BuildContext context) {
    final value = Provider.of<AudioPlayerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Songs",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: widget.songs.length,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: GestureDetector(
                onTap: () {
                  if (!value.isPlaying) {
                    value.currentSongIndex = index;
                    value.play();
                  } else if (value.currentSong.title !=
                      widget.songs[index].title) {
                    value.currentSongIndex = index;
                    value.play();
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SongFullPage()));
                },
                child: SongCard(song: widget.songs[index], index: index))),
      ),
    );
  }
}
