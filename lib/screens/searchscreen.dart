import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/engine/books_provider.dart';
import 'package:songsapp/models/book.dart';
import 'package:songsapp/screens/lyricscreen.dart';
import 'package:songsapp/widgets/bookcard.dart';

// ignore: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final BooksProvider booksProvider = BooksProvider();
  late List<Book> books = [];
  late String query = "";
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;
  final ValueNotifier<double> _opacityNotifier = ValueNotifier(0.0);

  void update() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        books = booksProvider.searchBooks(query);
        _opacityNotifier.value = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black12,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _controller,
                  onChanged: (value) {
                    _opacityNotifier.value = 0.0;
                    query = value;
                    update();
                  },
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.black54,
                      size: 45,
                    ),
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: _opacityNotifier,
              builder: (context, opacity, child) {
                return AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 350),
                  child: child,
                );
              },
              child: ListView.builder(
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
                          ),
                        ),
                      );
                    },
                    child: BookCard(book: books[index]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
