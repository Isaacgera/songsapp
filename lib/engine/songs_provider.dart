// ignore_for_file: non_ant_identifier_names

import 'package:songsapp/engine/books_provider.dart';
import 'package:songsapp/models/song.dart';

class SongsProvider {
  //Object for Books Provider

  BooksProvider bookprovider = BooksProvider();

  //preparing songs
  // final Song a1_song1 =  Song(
  //   title: "Comentry 1",
  //   subtitle: "వ్యాఖ్యానం 1",
  //   audiopath: "audios/album1/1.mp3",
  //   lyricspath: "lyrics/a1_comentry.txt",
  // );

  //26
  late Song a1_song2 = Song(
    title: bookprovider.b26.title,
    subtitle: bookprovider.b26.subtitle,
    audiopath: "audios/album1/2.mp3",
    // audiopath: "http://3.7.73.205/main.mp3",
    lyricspath: bookprovider.b26.lyricspath,
  );
  //34
  late Song a1_song3 = Song(
    title: bookprovider.b34.title,
    subtitle: bookprovider.b34.subtitle,
    audiopath: "audios/album1/3.mp3",
    lyricspath: bookprovider.b34.lyricspath,
  );
  //18
  late Song a1_song4 = Song(
    title: bookprovider.b18.title,
    subtitle: bookprovider.b18.subtitle,
    audiopath: "audios/album1/4.mp3",
    lyricspath: bookprovider.b18.lyricspath,
  );
  //17
  late Song a1_song5 = Song(
    title: bookprovider.b17.title,
    subtitle: bookprovider.b17.subtitle,
    audiopath: "audios/album1/5.mp3",
    lyricspath: bookprovider.b17.lyricspath,
  );
  //27
  late Song a1_song6 = Song(
    title: bookprovider.b27.title,
    subtitle: bookprovider.b27.subtitle,
    audiopath: "audios/album1/6.mp3",
    lyricspath: bookprovider.b27.lyricspath,
  );
  //24
  late Song a1_song7 = Song(
    title: bookprovider.b24.title,
    subtitle: bookprovider.b24.subtitle,
    audiopath: "audios/album1/7.mp3",
    lyricspath: bookprovider.b24.lyricspath,
  );
  //43
  late Song a1_song8 = Song(
    title: bookprovider.b43.title,
    subtitle: bookprovider.b43.subtitle,
    audiopath: "audios/album1/8.mp3",
    lyricspath: bookprovider.b43.lyricspath,
  );
  //29
  late Song a1_song9 = Song(
    title: bookprovider.b29.title,
    subtitle: bookprovider.b29.subtitle,
    audiopath: "audios/album1/9.mp3",
    lyricspath: bookprovider.b29.lyricspath,
  );
  //null no lyrics
  // final Song a1_song10 = const Song(
  //   title: "Prayer",
  //   subtitle: "ప్రార్థన",
  //   audiopath: "audios/album1/10.mp3",
  //   lyricspath: "lyrics/9.txt",
  // );
  //address
  // final Song a1_song11 =  Song(
  //   title: "Aedres",
  //   subtitle: "ఎడ్రెస్",
  //   audiopath: "audios/album1/11.mp3",
  //   lyricspath: "lyrics/10.txt",
  // );

  //reading Songs2 for audios/album 02
  // final Song a2_song1 = const Song(
  //   title: "Comentry 2",
  //   subtitle: "వ్యాఖ్యానం 2",
  //   audiopath: "audios/album2/1.mp3",
  //   lyricspath: "lyrics/a1_comentry.txt",
  // );

  //2
  late Song a2_song2 = Song(
    title: bookprovider.b2.title,
    subtitle: bookprovider.b2.subtitle,
    audiopath: "audios/album2/2.mp3",
    lyricspath: bookprovider.b2.lyricspath,
  );
  //15
  late Song a2_song3 = Song(
    title: bookprovider.b15.title,
    subtitle: bookprovider.b15.subtitle,
    audiopath: "audios/album2/3.mp3",
    lyricspath: bookprovider.b15.lyricspath,
  );
  //5
  late Song a2_song4 = Song(
    title: bookprovider.b5.title,
    subtitle: bookprovider.b5.subtitle,
    audiopath: "audios/album2/4.mp3",
    lyricspath: bookprovider.b5.lyricspath,
  );
  //31
  late Song a2_song5 = Song(
    title: bookprovider.b31.title,
    subtitle: bookprovider.b31.subtitle,
    audiopath: "audios/album2/5.mp3",
    lyricspath: bookprovider.b31.lyricspath,
  );
  //6
  late Song a2_song6 = Song(
    title: bookprovider.b6.title,
    subtitle: bookprovider.b6.subtitle,
    audiopath: "audios/album2/6.mp3",
    lyricspath: bookprovider.b6.lyricspath,
  );
  //14
  late Song a2_song7 = Song(
    title: bookprovider.b14.title,
    subtitle: bookprovider.b14.subtitle,
    audiopath: "audios/album2/7.mp3",
    lyricspath: bookprovider.b14.lyricspath,
  );
  //4
  late Song a2_song8 = Song(
    title: bookprovider.b4.title,
    subtitle: bookprovider.b4.subtitle,
    audiopath: "audios/album2/8.mp3",
    lyricspath: bookprovider.b4.lyricspath,
  );
  //7
  late Song a2_song9 = Song(
    title: bookprovider.b7.title,
    subtitle: bookprovider.b7.subtitle,
    audiopath: "audios/album2/9.mp3",
    lyricspath: bookprovider.b7.lyricspath,
  );
  //reading Songs3 for audios/album 03
  //259
  late Song a3_song1 = Song(
    title: bookprovider.b259.title,
    subtitle: bookprovider.b259.subtitle,
    audiopath: "audios/album3/1.mp3",
    lyricspath: bookprovider.b259.lyricspath,
  );
  //9
  late Song a3_song2 = Song(
    title: bookprovider.b9.title,
    subtitle: bookprovider.b9.subtitle,
    audiopath: "audios/album3/2.mp3",
    lyricspath: bookprovider.b9.lyricspath,
  );
  //11
  late Song a3_song3 = Song(
    title: bookprovider.b11.title,
    subtitle: bookprovider.b11.subtitle,
    audiopath: "audios/album3/3.mp3",
    lyricspath: bookprovider.b11.lyricspath,
  );
  //113
  late Song a3_song4 = Song(
    title: bookprovider.b113.title,
    subtitle: bookprovider.b113.subtitle,
    audiopath: "audios/album3/4.mp3",
    lyricspath: bookprovider.b113.lyricspath,
  );
  //194
  late Song a3_song5 = Song(
    title: bookprovider.b194.title,
    subtitle: bookprovider.b194.subtitle,
    audiopath: "audios/album3/5.mp3",
    lyricspath: bookprovider.b194.lyricspath,
  );
  //165
  late Song a3_song6 = Song(
    title: bookprovider.b165.title,
    subtitle: bookprovider.b165.subtitle,
    audiopath: "audios/album3/6.mp3",
    lyricspath: bookprovider.b165.lyricspath,
  );
  //244
  late Song a3_song7 = Song(
    title: bookprovider.b244.title,
    subtitle: bookprovider.b244.subtitle,
    audiopath: "audios/album3/7.mp3",
    lyricspath: bookprovider.b244.lyricspath,
  );
  //214
  late Song a3_song8 = Song(
    title: bookprovider.b214.title,
    subtitle: bookprovider.b214.subtitle,
    audiopath: "audios/album3/8.mp3",
    lyricspath: bookprovider.b214.lyricspath,
  );
  //87
  late Song a3_song9 = Song(
    title: bookprovider.b87.title,
    subtitle: bookprovider.b87.subtitle,
    audiopath: "audios/album3/9.mp3",
    lyricspath: bookprovider.b87.lyricspath,
  );
  //208
  late Song a3_song10 = Song(
    title: bookprovider.b208.title,
    subtitle: bookprovider.b208.subtitle,
    audiopath: "audios/album3/10.mp3",
    lyricspath: bookprovider.b208.lyricspath,
  );
  //254
  late Song a3_song11 = Song(
    title: bookprovider.b254.title,
    subtitle: bookprovider.b254.subtitle,
    audiopath: "audios/album3/11.mp3",
    lyricspath: bookprovider.b254.lyricspath,
  );
  //147
  late Song a3_song12 = Song(
    title: bookprovider.b147.title,
    subtitle: bookprovider.b147.subtitle,
    audiopath: "audios/album3/12.mp3",
    lyricspath: bookprovider.b147.lyricspath,
  );
  //139
  late Song a3_song13 = Song(
    title: bookprovider.b139.title,
    subtitle: bookprovider.b139.subtitle,
    audiopath: "audios/album3/13.mp3",
    lyricspath: bookprovider.b139.lyricspath,
  );
  //211
  late Song a3_song14 = Song(
    title: bookprovider.b211.title,
    subtitle: bookprovider.b211.subtitle,
    audiopath: "audios/album3/14.mp3",
    lyricspath: bookprovider.b211.lyricspath,
  );
  //172
  late Song a3_song15 = Song(
    title: bookprovider.b172.title,
    subtitle: bookprovider.b172.subtitle,
    audiopath: "audios/album3/15.mp3",
    lyricspath: bookprovider.b172.lyricspath,
  );
  //245
  late Song a3_song16 = Song(
    title: bookprovider.b245.title,
    subtitle: bookprovider.b245.subtitle,
    audiopath: "audios/album3/16.mp3",
    lyricspath: bookprovider.b245.lyricspath,
  );
  //preparing for initialization
  late final List<Song> a1_songs, a2_songs, a3_songs;
  SongsProvider() {
    a1_songs = [
      // a1_song1,
      a1_song2,
      a1_song3,
      a1_song4,
      a1_song5,
      a1_song6,
      a1_song7,
      a1_song8,
      a1_song9,
      // a1_song10,
      // a1_song11
    ];
    a2_songs = [
      // a2_song1,
      a2_song2,
      a2_song3,
      a2_song4,
      a2_song5,
      a2_song6,
      a2_song7,
      a2_song8,
      a2_song9
    ];
    a3_songs = [
      a3_song1,
      a3_song2,
      a3_song3,
      a3_song4,
      a3_song5,
      a3_song6,
      a3_song7,
      a3_song8,
      a3_song9,
      a3_song10,
      a3_song11,
      a3_song12,
      a3_song13,
      a3_song14,
      a3_song15,
      a3_song16
    ];
  }
  List<Song> getA1Songs() {
    return a1_songs;
  }

  List<Song> getA2Songs() {
    return a2_songs;
  }

  List<Song> getA3Songs() {
    return a3_songs;
  }

  List<Song> getAllSongs() {
    return a1_songs + a2_songs + a3_songs;
  }
}
