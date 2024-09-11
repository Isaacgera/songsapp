import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;

class LyricsCard extends StatefulWidget {
  final String lyricsPath;
  final String title;
  const LyricsCard({super.key, required this.title, required this.lyricsPath});

  @override
  State<LyricsCard> createState() => _LyricsCardState();
}

class _LyricsCardState extends State<LyricsCard> {
  String _fileContent = '';
  double _fontSize = 14;

  void update() {
    setState(() {
      _fontSize;
    });
  }

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
        width: 700,
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.title,
                      style: GoogleFonts.inconsolata(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _fontSize = 14;
                          update();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: const Text(
                            "Aa",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _fontSize = 18;
                          update();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: const Text(
                            "Aa",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _fontSize = 22;
                          update();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: const Text(
                            "Aa",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(10),
                child: Text(
                  (widget.lyricsPath == "none")
                      ? "Comming Soon..\n\n"
                      : _fileContent,
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ))
          ],
        ));
  }
}

// Text((lyricsPath == "none") ? "Comming Soon" : "la lala laa"));
