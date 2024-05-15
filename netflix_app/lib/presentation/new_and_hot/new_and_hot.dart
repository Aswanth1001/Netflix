import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/presentation/new_and_hot/coming_soon.dart';
import 'package:netflix_app/presentation/new_and_hot/everyone_watching.dart';

class screennewandhot extends StatelessWidget {
  const screennewandhot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "New & Hot",
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              actions: [
                Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
              bottom: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  tabs: [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyones's Watching",
                    )
                  ]),
            ),
          ),
          body: TabBarView(children: [ComingSoon(), EveryoneWatching()])),
    );
  }
}
