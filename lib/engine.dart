import 'package:songsapp/models/album.dart';
import 'package:songsapp/models/song.dart';
import 'package:songsapp/engine/songs_provider.dart';

class Engine {
  //readying Songs1 for ALBUM 01

  //preperation to instanciate them
  late final List<Song> a1_songs, a2_songs, a3_songs;
  late final Album album1, album2, album3;
  late final List<Album> albums;

  //constructor
  Engine() {
    SongsProvider songprovider = SongsProvider();

    a1_songs = songprovider.getA1Songs();
    a2_songs = songprovider.getA2Songs();
    a3_songs = songprovider.getA3Songs();
    album1 = Album(title: "Album 01", songs: a1_songs);
    album2 = Album(title: "Album 02", songs: a2_songs);
    album3 = Album(title: "Album 03", songs: a3_songs);
    albums = [album1, album2, album3];
  }

  List<Album> getAlbums() {
    return albums;
  }
}
