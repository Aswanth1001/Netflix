import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/Main_card.dart';
import 'package:netflix_app/presentation/widgets/main_titile.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: main_card(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
