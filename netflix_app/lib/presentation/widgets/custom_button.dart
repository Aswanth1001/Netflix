import 'package:flutter/material.dart';
import 'package:netflix_app/constants.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.icon,
      required this.title,
      this.iconsize = 30,
      this.textsize = 17});
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: iconsize,
        ),
        kHeight5,
        Text(
          title,
          style: TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}
