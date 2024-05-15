import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appbarwidget extends StatelessWidget {
  const appbarwidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
