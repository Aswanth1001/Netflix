import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class numberCard extends StatelessWidget {
  const numberCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              height: 190,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/2E2WTX0TJEflAged6kzErwqX1kt.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          top: 100,
          child: BorderedText(
            strokeWidth: 10.0,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                fontSize: 100,
                decoration: TextDecoration.none,
                decorationColor: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }
}
