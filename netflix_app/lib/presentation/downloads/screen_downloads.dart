import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widgets.dart';

class screendownloads extends StatelessWidget {
  screendownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: appbarwidget(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Smart Downloads')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Text(
              'Turn on Downloads for You',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Text(
              'We will download movies and shows just for you.So\n you will always have something to watch.',
              style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 205, 205, 205)),
            ),
          ),
          Container(
            width: 100,
            height: 330,
            color: Colors.black,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 10),
                  child: Transform.rotate(
                    angle: 20 * pi / 180,
                    child: Container(
                      width: 140,
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5qHoazZiaLe7oFBok7XlUhg96f2.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120, top: 10),
                  child: Transform.rotate(
                    angle: -20 * pi / 180,
                    child: Container(
                      width: 140,
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: NetworkImage(images[1]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  height: 225,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: NetworkImage(images[0]), fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Setup'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: Text(
              'See What You can download',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

final List images = [
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/h3jYanWMEJq6JJsCopy1h7cT2Hs.jpg",
];
