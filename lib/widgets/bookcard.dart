import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/models/book.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});
  final Book book;

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
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset('imgs/booktmb.jpg')),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      book.title,
                      style: GoogleFonts.inconsolata(
                        fontSize: 20,
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          0, -4, 0), // adjust the y-offset
                      child: Text(
                        book.subtitle,
                        style: GoogleFonts.inconsolata(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 50,
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    book.id.toString(),
                    style: GoogleFonts.inconsolata(
                        fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
