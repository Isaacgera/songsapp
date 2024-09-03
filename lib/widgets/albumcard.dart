import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumCard extends StatelessWidget {
  final String title;
  final int count;
  const AlbumCard({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: const Image(
                image: AssetImage('assets/imgs/albumtmb.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.inconsolata(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "$count Songs",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inconsolata(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
