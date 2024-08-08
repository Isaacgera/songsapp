import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:SizedBox(
        height: 70,
        child: Row(
          children: [
            Container(
              padding:const EdgeInsets.all(3),
              margin:const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.all(Radius.circular(6)),
              ),
              child: Image.asset(
                    'imgs/albumtmb.png'
              ),
            ),

            Container(
              margin:const EdgeInsets.only(left: 12),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12,),
                  Text(
                      "Album Title",
                      style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                      "10 Songs",
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