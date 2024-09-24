import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:songsapp/models/song.dart';

class AudioPlayerProvider extends ChangeNotifier {
  //current songindex
  int? _currentSongIndex;
  late List<Song> _allSongs = [];
  Song _currentSong = const Song(
      title: "Title", subtitle: "SubTitle", audiopath: "", lyricspath: "");

  // GETTERs
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuratioon => _totalDuration;
  Song get currentSong => _currentSong;

  //SETTERs

  set currentDuration(Duration i) {
    _currentDuration = i;
  }

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    if (newIndex != null) {
      play();
    }
  }

  set allSongs(List<Song> songs) {
    _allSongs = songs;
  }

  //AUDIO PLAYER

  //audio player

  final AudioPlayer _audioPlayer = AudioPlayer();

  //duration

  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  //constructor

  AudioPlayerProvider() {
    ListenToDuration();
  }

  //initally not playing

  bool _isPlaying = false;

  //play the song

  void play() async {
    final String path = _allSongs[_currentSongIndex!].audiopath;
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(path, mimeType: 'audio/mp3'));
    _currentSong = _allSongs[_currentSongIndex!];
    _isPlaying = true;
    notifyListeners();
  }

  //pause the current song

  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  //resume playing song

  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  //pause or resume

  void pauseOrResume() async {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }
    notifyListeners();
  }

  //seek to a position in current song

  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  //play next song

  void playNextSong() async {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! < _allSongs.length - 1) {
        _currentSongIndex = _currentSongIndex! + 1;
        _currentSong = _allSongs[_currentSongIndex!];
      } else {
        _currentSongIndex = 0;
        _currentSong = _allSongs[_currentSongIndex!];
      }
    }
    play();
    notifyListeners();
  }

  //play previous song

  void playPreviousSong() async {
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    } else {
      if (_currentSongIndex! > 0) {
        _currentSongIndex = _currentSongIndex! - 1;
        _currentSong = _allSongs[_currentSongIndex!];
        play();
      } else {
        _currentSongIndex = _allSongs.length - 1;
        _currentSong = _allSongs[_currentSongIndex!];
        play();
      }
    }
    notifyListeners();
  }

  //listen to durations

  void ListenToDuration() {
    //Listen for total Duration

    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    //Listen for current Duration

    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    //Listen for Song Complete

    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }

  //dispose audio player
}
