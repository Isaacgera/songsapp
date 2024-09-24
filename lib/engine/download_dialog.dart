import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/engine/file_download.dart';

class DownloadProgressDialog extends StatefulWidget {
  const DownloadProgressDialog({super.key});

  @override
  State<DownloadProgressDialog> createState() => _DownloadProgressDialogState();
}

class _DownloadProgressDialogState extends State<DownloadProgressDialog> {
  double progress = 0.0;

  @override
  void initState() {
    _startDownload();
    super.initState();
  }

  void _startDownload() {
    FileDownload().startDownloading(context, (recivedBytes, totalBytes) {
      setState(() {
        progress = recivedBytes / totalBytes;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String downloadingProgress = (progress * 100).toInt().toString();
    return AlertDialog(
        backgroundColor: Colors.black12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Downloading",
                style: GoogleFonts.inconsolata(
                  fontSize: 20,
                ),
              ),
            ),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey,
              color: Colors.green,
              minHeight: 4,
              borderRadius: BorderRadius.circular(8),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "$downloadingProgress%",
                style: GoogleFonts.inconsolata(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ));
  }
}
