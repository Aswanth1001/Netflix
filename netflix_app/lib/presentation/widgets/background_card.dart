import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/custom_button.dart';
import 'package:netflix_app/presentation/widgets/play_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 560,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://image.tmdb.org/t/p/original/zA3Jcyz1yk4B4np0NWSBkw07r1w.jpg"),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(
                  title: "My List",
                  icon: Icons.add,
                ),
                PlayButton(),
                customButton(icon: Icons.info_outline, title: "Info")
              ],
            ),
          ),
        )
      ],
    );
  }
}
