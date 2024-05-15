import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_widget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => EveryonesWidget(),
    );
  }
}
