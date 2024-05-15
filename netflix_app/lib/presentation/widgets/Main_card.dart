import 'package:flutter/material.dart';

class main_card extends StatelessWidget {
  const main_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            "https://image.tmdb.org/t/p/w600_and_h900_bestv2/tDKlFXWCvIkP2Xl2nMdI49kzwZx.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
