import 'package:flutter/material.dart';
import 'package:songsapp/models/song.dart';

class SongCard extends StatelessWidget {
  const SongCard({super.key, required this.song});

  final Song song;

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
              child: Image.asset(
                'imgs/songtmb.jpg',
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
                  SizedBox(
                    width: 180,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      song.title,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    "Duration.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
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
