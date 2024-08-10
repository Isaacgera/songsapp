import 'package:songsapp/models/song.dart';

class Album {
  final String title;
  final List<Song> songs;

  const Album({
    required this.title,
    required this.songs,
  });
}
