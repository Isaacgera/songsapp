import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/engine/books_provider.dart';
import 'package:songsapp/models/book.dart';
import 'package:songsapp/screens/lyricscreen.dart';
import 'package:songsapp/widgets/bookcard.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final BooksProvider _booksProvider = BooksProvider();
  late List<Book> books = _booksProvider.getAllBooks();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Books",
            style: GoogleFonts.inconsolata(
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
            padding: const EdgeInsets.only(top: 10),
            physics: const BouncingScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LyricsPage(
                                    lyricsPath: books[index].lyricspath,
                                  )));
                    },
                    child: BookCard(book: books[index]),
                  ),
                )));
  }
}
