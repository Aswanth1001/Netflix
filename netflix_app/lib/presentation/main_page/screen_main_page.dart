import 'package:flutter/material.dart';

import 'package:netflix_app/presentation/Home/screen_home.dart';
import 'package:netflix_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_app/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_app/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix_app/presentation/search/search.dart';

class screenmainpage extends StatefulWidget {
  const screenmainpage({super.key});

  @override
  State<screenmainpage> createState() => _screenmainpageState();
}

class _screenmainpageState extends State<screenmainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: bottomnavigationWidget(),
    );
  }
}

final List pages = [
  screenHome(),
  screennewandhot(),
  screenfastlaugh(),
  screensearch(),
  screendownloads()
];
