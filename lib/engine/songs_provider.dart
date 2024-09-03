// ignore_for_file: non_constant_identifier_names

import 'package:songsapp/engine/books_provider.dart';
import 'package:songsapp/models/song.dart';

class SongsProvider {
  //Object for Books Provider

  BooksProvider bookprovider = BooksProvider();

  // late Song a1_song1 = Song(
  //   title: bookprovider.b1.title,
  //   subtitle: bookprovider.b1.subtitle,
  //   audiopath: "album1/1.mp3",
  //   lyricspath: bookprovider.b1.lyricspath,
  // );

  //preparing songs
  final Song a1_song1 = const Song(
    title: "Comentry 1",
    subtitle: "వ్యాఖ్యానం 1",
    audiopath: "album1/1.mp3",
    lyricspath: "lyrics/a1_comentry.txt",
  );
  //26
  late Song a1_song2 = Song(
    title: bookprovider.b26.title,
    subtitle: bookprovider.b26.subtitle,
    audiopath: "album1/2.mp3",
    lyricspath: bookprovider.b26.lyricspath,
  );
  //34
  late Song a1_song3 = Song(
    title: bookprovider.b34.title,
    subtitle: bookprovider.b34.subtitle,
    audiopath: "album1/3.mp3",
    lyricspath: bookprovider.b34.lyricspath,
  );
  //18
  late Song a1_song4 = Song(
    title: bookprovider.b18.title,
    subtitle: bookprovider.b18.subtitle,
    audiopath: "album1/4.mp3",
    lyricspath: bookprovider.b18.lyricspath,
  );
  //17
  late Song a1_song5 = Song(
    title: bookprovider.b17.title,
    subtitle: bookprovider.b17.subtitle,
    audiopath: "album1/5.mp3",
    lyricspath: bookprovider.b17.lyricspath,
  );
  //27
  late Song a1_song6 = Song(
    title: bookprovider.b27.title,
    subtitle: bookprovider.b27.subtitle,
    audiopath: "album1/6.mp3",
    lyricspath: bookprovider.b27.lyricspath,
  );
  //24
  late Song a1_song7 = Song(
    title: bookprovider.b24.title,
    subtitle: bookprovider.b24.subtitle,
    audiopath: "album1/7.mp3",
    lyricspath: bookprovider.b24.lyricspath,
  );
  //43
  late Song a1_song8 = Song(
    title: bookprovider.b43.title,
    subtitle: bookprovider.b43.subtitle,
    audiopath: "album1/8.mp3",
    lyricspath: bookprovider.b43.lyricspath,
  );
  //29
  late Song a1_song9 = Song(
    title: bookprovider.b29.title,
    subtitle: bookprovider.b29.subtitle,
    audiopath: "album1/9.mp3",
    lyricspath: bookprovider.b29.lyricspath,
  );
  //null no lyrics
  final Song a1_song10 = const Song(
    title: "Prayer",
    subtitle: "ప్రార్థన",
    audiopath: "album1/10.mp3",
    lyricspath: "lyrics/9.txt",
  );
  //address
  final Song a1_song11 = const Song(
    title: "Aedres",
    subtitle: "ఎడ్రెస్",
    audiopath: "album1/11.mp3",
    lyricspath: "lyrics/10.txt",
  );

  //reading Songs2 for ALBUM 02
  final Song a2_song1 = const Song(
    title: "Comentry 2",
    subtitle: "వ్యాఖ్యానం 2",
    audiopath: "album2/1.mp3",
    lyricspath: "lyrics/a1_comentry.txt",
  );
  //2
  late Song a2_song2 = Song(
    title: bookprovider.b2.title,
    subtitle: bookprovider.b2.subtitle,
    audiopath: "album2/2.mp3",
    lyricspath: bookprovider.b2.lyricspath,
  );
  //15
  late Song a2_song3 = Song(
    title: bookprovider.b15.title,
    subtitle: bookprovider.b15.subtitle,
    audiopath: "album2/3.mp3",
    lyricspath: bookprovider.b15.lyricspath,
  );
  //5
  late Song a2_song4 = Song(
    title: bookprovider.b5.title,
    subtitle: bookprovider.b5.subtitle,
    audiopath: "album2/4.mp3",
    lyricspath: bookprovider.b5.lyricspath,
  );
  //31
  late Song a2_song5 = Song(
    title: bookprovider.b31.title,
    subtitle: bookprovider.b31.subtitle,
    audiopath: "album2/5.mp3",
    lyricspath: bookprovider.b31.lyricspath,
  );
  //6
  late Song a2_song6 = Song(
    title: bookprovider.b6.title,
    subtitle: bookprovider.b6.subtitle,
    audiopath: "album2/6.mp3",
    lyricspath: bookprovider.b6.lyricspath,
  );
  //14
  late Song a2_song7 = Song(
    title: bookprovider.b14.title,
    subtitle: bookprovider.b14.subtitle,
    audiopath: "album2/7.mp3",
    lyricspath: bookprovider.b14.lyricspath,
  );
  //4
  late Song a2_song8 = Song(
    title: bookprovider.b4.title,
    subtitle: bookprovider.b4.subtitle,
    audiopath: "album2/8.mp3",
    lyricspath: bookprovider.b4.lyricspath,
  );
  //7
  late Song a2_song9 = Song(
    title: bookprovider.b7.title,
    subtitle: bookprovider.b7.subtitle,
    audiopath: "album2/9.mp3",
    lyricspath: bookprovider.b7.lyricspath,
  );
  //reading Songs3 for ALBUM 03
  //null
  final Song a3_song1 = const Song(
    title: "Sagi Povutaku",
    subtitle: "సాగి పోవుటకు",
    audiopath: "album3/1.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song2 = const Song(
    title: "Manchi Deva Joy",
    subtitle: "మాంచి దేవా జాయ్",
    audiopath: "album3/2.mp3",
    lyricspath: "none",
  );
  //11
  final Song a3_song3 = const Song(
    title: "Pillalamu ",
    subtitle: "పిల్లలము యేసయ్యా",
    audiopath: "album3/3.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song4 = const Song(
    title: "Yehova Unnavadavu Sarwes",
    subtitle: "యెహోవా ఉన్నవాడవు సర్వేస్",
    audiopath: "album3/4.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song5 = const Song(
    title: "Neevu Nakunte Chalunu",
    subtitle: "నీవు నాకుంటే చాలును",
    audiopath: "album3/5.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song6 = const Song(
    title: "Entha Goppa Krupa",
    subtitle: "ఎంత గొప్ప కృపా",
    audiopath: "album3/6.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song7 = const Song(
    title: "Chedipoyina Roginaya Joy",
    subtitle: "చెడిపోయిన రోగినాయ ఆనందం",
    audiopath: "album3/7.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song8 = const Song(
    title: "Nee Krupa Naku",
    subtitle: "నీ కృపా నాకు",
    audiopath: "album3/8.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song9 = const Song(
    title: "Aradhana Cheyudam",
    subtitle: "ఆరాధన చేయుడం",
    audiopath: "album3/9.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song10 = const Song(
    title: "Sodara Sodari",
    subtitle: "సోదర సోదరి",
    audiopath: "album3/10.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song11 = const Song(
    title: "Ninu Sthuyinchutaku Enno Karnamulu",
    subtitle: "నిను స్తుయించుటకు ఎన్నో కర్ణములు",
    audiopath: "album3/11.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song12 = const Song(
    title: "Manchi Devudu Naku dorikenu",
    subtitle: "మంచి దేవుడు నాకు దొరికెను",
    audiopath: "album3/12.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song13 = const Song(
    title: "Ma Manchi deva",
    subtitle: "మ మంచి దేవా",
    audiopath: "album3/13.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song14 = const Song(
    title: "Daya Mayudavu",
    subtitle: "దయా మయుడవు",
    audiopath: "album3/14.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song15 = const Song(
    title: "Parishudduda",
    subtitle: "పరిశుద్ధుడు",
    audiopath: "album3/15.mp3",
    lyricspath: "none",
  );
  //null
  final Song a3_song16 = const Song(
    title: "Sagi Povutaku",
    subtitle: "సాగి పోవుటకు",
    audiopath: "album3/16.mp3",
    lyricspath: "none",
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
}
