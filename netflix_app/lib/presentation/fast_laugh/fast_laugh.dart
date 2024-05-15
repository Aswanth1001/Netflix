import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/fast_laugh/widgets/video_list_item.dart';

class screenfastlaugh extends StatelessWidget {
  const screenfastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(10, (index) {
        return videoListItems(
          index: index,
        );
      }),
    )));
  }
}
