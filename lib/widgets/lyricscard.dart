import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;

class LyricsCard extends StatefulWidget {
  final String lyricsPath;
  const LyricsCard({super.key, required this.lyricsPath});

  @override
  State<LyricsCard> createState() => _LyricsCardState();
}

class _LyricsCardState extends State<LyricsCard> {
  String _fileContent = '';

  @override
  void initState() {
    super.initState();
    _loadFileContent(widget.lyricsPath);
  }

  Future<void> _loadFileContent(String lyricsPath) async {
    try {
      String content = await rootBundle.loadString(lyricsPath);
      setState(() {
        _fileContent = content;
      });
    } catch (e) {
      print('Error loading file: $e');
      setState(() {
        _fileContent = 'Error loading file';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        width: 350,
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Lyrics",
                    style: GoogleFonts.inconsolata(
                      fontSize: 16,
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'icons/paper.png',
                      scale: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                child: Text((widget.lyricsPath == "none")
                    ? "Comming Soon..\n\n"
                    : _fileContent))
          ],
        ));
  }
}

// Text((lyricsPath == "none") ? "Comming Soon" : "la lala laa"));
