import 'package:flutter/material.dart';
import 'package:songsapp/models/song.dart';
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
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: widget.songs.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GestureDetector(
              onTap: () {}, child: SongCard(song: widget.songs[index])),
        ),
      ),
    );
  }
}
