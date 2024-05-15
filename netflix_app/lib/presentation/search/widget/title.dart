import 'package:flutter/cupertino.dart';

class searchtitle extends StatelessWidget {
  final String title;
  const searchtitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
