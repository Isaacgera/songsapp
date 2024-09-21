import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:songsapp/engine/download_dialog.dart';

class MagazinePage extends StatefulWidget {
  const MagazinePage({super.key});
  @override
  State<MagazinePage> createState() => _MagazinePageState();

  static Future<bool> _permissionRequest() async {
    PermissionStatus result;
    result = await Permission.storage.request();
    if (result.isGranted) {
      return true;
    } else {
      return false;
    }
  }
}

class _MagazinePageState extends State<MagazinePage> {
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
              margin: const EdgeInsets.all(12),
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
                    onTap: () async {
                      bool result = await MagazinePage._permissionRequest();
                      if (result) {
                        Future.delayed(Duration.zero, () {
                          if (mounted) {
                            showDialog(
                              context: context,
                              builder: (dialogcontext) {
                                return const DownloadProgressDialog();
                              },
                            );
                          }
                        });
                      } else {
                        print("No permission to read and write.");
                      }
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
