import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:netflix_app/constants.dart';
import 'package:netflix_app/presentation/widgets/custom_button.dart';

class EveryonesWidget extends StatelessWidget {
  const EveryonesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            "Friends",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          kHeight,
          Text(
            "This hit sitcom the merry misadventures of six 20-something pals as they navigate  the pitfalls of work,life and love in 1990s Manhattan.",
            style: TextStyle(fontSize: 17, color: Colors.grey.shade400),
          ),
          kHeight50,
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  "https://image.tmdb.org/t/p/original/t3QB1Bq9o0NG4GZkD8MZOZLlOIR.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.10),
                  radius: 18,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesome5Solid.volume_mute,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                customButton(
                  icon: Entypo.paper_plane,
                  title: "Share",
                  iconsize: 25,
                  textsize: 15,
                ),
                kwidth10,
                customButton(
                  icon: Icons.add,
                  title: "My List",
                  iconsize: 25,
                  textsize: 15,
                ),
                kwidth10,
                customButton(
                  icon: Icons.play_arrow,
                  title: "Play",
                  iconsize: 25,
                  textsize: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
