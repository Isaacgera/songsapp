import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class MagazinePage extends StatelessWidget {
  const MagazinePage({super.key});
  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;
    int currentMonth = DateTime.now().month;
    List<String> monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    //methods
    Future<void> downloadFile(String url, String filename) async {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$filename');

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final bytes = response.bodyBytes;

        await file.create();
        await file.writeAsBytes(bytes);

        print('File downloaded successfully');
      } else {
        print('Failed to download file');
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Magazine",
            style: GoogleFonts.inconsolata(
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Container(
              width: 700,
              height: 200,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "God's Love Magazine",
                    style: GoogleFonts.inconsolata(
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "దేవుని ప్రేమ మాసపత్రిక",
                    style: GoogleFonts.inconsolata(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${monthNames[currentMonth - 1]} $currentYear",
                    style: GoogleFonts.inconsolata(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      downloadFile(
                          "https://github.com/JesusImmanuel/Magazine-App/blob/main/main.pdf",
                          "Magazine-${monthNames[currentMonth - 1]} $currentYear.pdf");
                    },
                    child: Container(
                      width: 250,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.download_rounded,
                              size: 28, color: Colors.black54),
                          const SizedBox(width: 16),
                          Text(
                            "Download Now",
                            style: GoogleFonts.inconsolata(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
