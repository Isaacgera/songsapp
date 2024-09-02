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
  late Song a1_song2 = const Song(
    title: "Goppadevudu",
    subtitle: "గొప్పదేవుడు",
    audiopath: "album1/2.mp3",
    lyricspath: "lyrics/1.txt",
  );
  //34
  final Song a1_song3 = const Song(
    title: "Yesayyanahrudayamu",
    subtitle: "యేసయ్యనహృదయము",
    audiopath: "album1/3.mp3",
    lyricspath: "lyrics/2.txt",
  );
  //18
  final Song a1_song4 = const Song(
    title: "Ysuprabhunisiluva",
    subtitle: "యేసుప్రభునిశిలువ",
    audiopath: "album1/4.mp3",
    lyricspath: "lyrics/3.txt",
  );
  //17
  final Song a1_song5 = const Song(
    title: "Andakara",
    subtitle: "అందకార",
    audiopath: "album1/5.mp3",
    lyricspath: "lyrics/4.txt",
  );
  //27
  final Song a1_song6 = const Song(
    title: "Ssthuthiganamulu",
    subtitle: "స్తుతిగణములు",
    audiopath: "album1/6.mp3",
    lyricspath: "lyrics/5.txt",
  );
  //24
  final Song a1_song7 = const Song(
    title: "Errani yesuraktham",
    subtitle: "ఎర్రని యేసురక్తం",
    audiopath: "album1/7.mp3",
    lyricspath: "lyrics/6.txt",
  );
  //43
  final Song a1_song8 = const Song(
    title: "Alankarincha",
    subtitle: "అలంకరించా",
    audiopath: "album1/8.mp3",
    lyricspath: "lyrics/7.txt",
  );
  //29
  final Song a1_song9 = const Song(
    title: "Naasraya durgama",
    subtitle: "నాశ్రయ దుర్గమా",
    audiopath: "album1/9.mp3",
    lyricspath: "lyrics/8.txt",
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
  final Song a2_song2 = const Song(
    title: "Sthuthulapathruda",
    subtitle: "స్థూలపాత్రుడు",
    audiopath: "album2/2.mp3",
    lyricspath: "none",
  );
  //15
  final Song a2_song3 = const Song(
    title: "Prabhuva neekoraku",
    subtitle: "ప్రభువా నీకొరకు",
    audiopath: "album2/3.mp3",
    lyricspath: "none",
  );
  //5
  final Song a2_song4 = const Song(
    title: "Ysukreesthu prabhuvu",
    subtitle: "యేసుక్రీస్తు ప్రభువు",
    audiopath: "album2/4.mp3",
    lyricspath: "none",
  );
  //31
  final Song a2_song5 = const Song(
    title: "Nabadaloadarana",
    subtitle: "నబడలోదరన",
    audiopath: "album2/5.mp3",
    lyricspath: "none",
  );
  //6
  final Song a2_song6 = const Song(
    title: "Yesurakthamu karchi",
    subtitle: "యేసురక్తము కార్చి",
    audiopath: "album2/6.mp3",
    lyricspath: "none",
  );
  //14
  final Song a2_song7 = const Song(
    title: "Rakshana nava",
    subtitle: "రక్షణ నవ",
    audiopath: "album2/7.mp3",
    lyricspath: "none",
  );
  //4
  final Song a2_song8 = const Song(
    title: "Yesenabalamu",
    subtitle: "యేసేనాబలము",
    audiopath: "album2/8.mp3",
    lyricspath: "none",
  );
  //7
  final Song a2_song9 = const Song(
    title: "Neekrupavalane",
    subtitle: "నీ కృపా వల్లనే",
    audiopath: "album2/9.mp3",
    lyricspath: "none",
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
