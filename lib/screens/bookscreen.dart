import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

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
      body: const Center(child: Text("Books : Comming Soon")),
    );
  }
}
