import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/main_titile.dart';
import 'package:netflix_app/presentation/widgets/number_card.dart';

class Number_title_card extends StatelessWidget {
  const Number_title_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 tv shows in india today"),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: numberCard(index: index,),
              ),
            ),
          ),
        )
      ],
    );
  }
}