import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/constants.dart';
import 'package:netflix_app/presentation/widgets/custom_button.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FEB",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "11",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 450,
            width: 295,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.network(
                        "https://www.rollingstone.com/wp-content/uploads/2020/08/Dune.jpg?w=1581&h=1054&crop=1",
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
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TallGirl 2",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    customButton(
                      icon: Icons.notifications_none,
                      title: "Remind Me",
                      iconsize: 20,
                      textsize: 15,
                    ),
                    customButton(
                      icon: Icons.info_outline,
                      title: "Info",
                      iconsize: 20,
                      textsize: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Coming On Friday",
                  style: GoogleFonts.aBeeZee(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Tall Girl 2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Landing the leadin the school Musical is a\ndream come true for jodi,until the pressure\nsends her confidence-and her relationship-\ninto a tailspin.",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
