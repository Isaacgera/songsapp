import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:songsapp/engine/yearlytopics_provider.dart';
import 'package:songsapp/models/topic.dart';

class YearlyTopicsPage extends StatefulWidget {
  const YearlyTopicsPage({super.key});

  @override
  State<YearlyTopicsPage> createState() => _YearlyTopicsPageState();
}

class _YearlyTopicsPageState extends State<YearlyTopicsPage> {
  final YearlyTopics yearlyTopics = YearlyTopics();

  late List<Topic> topics = yearlyTopics.getAllTopics();

  Widget createTable() {
    List<TableRow> rows = [];
    rows.add(
      TableRow(
          decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(6), topLeft: Radius.circular(6)),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                "S.No",
                style: GoogleFonts.inconsolata(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                "Year",
                style: GoogleFonts.inconsolata(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                "Verse",
                style: GoogleFonts.inconsolata(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                "Reference",
                style: GoogleFonts.inconsolata(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
    );
    for (int i = 0; i < topics.length; i++) {
      rows.add(TableRow(
          decoration: const BoxDecoration(
            color: Colors.black12,
            // borderRadius: BorderRadius.only(
            //     topRight: Radius.circular(6), topLeft: Radius.circular(6)),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                (i + 1).toString(),
                style: GoogleFonts.inconsolata(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                topics[i].year.toString(),
                style: GoogleFonts.inconsolata(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                topics[i].verse,
                style: GoogleFonts.inconsolata(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                topics[i].reference,
                style: GoogleFonts.inconsolata(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
          ]));
    }
    return Table(
        border: TableBorder.all(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(48),
          1: FixedColumnWidth(56),
          2: IntrinsicColumnWidth(),
          3: IntrinsicColumnWidth()
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: rows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yearly Topics",
          style: GoogleFonts.inconsolata(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: SingleChildScrollView(child: createTable()),
        ),
      ),
    );
  }
}
