import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix_app/presentation/search/widget/search_result.dart';

class screensearch extends StatelessWidget {
  const screensearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: TextStyle(color: Colors.white),
            ),
            // Expanded(child: const searchidle())
            const Expanded(child: searchResultwidget())
          ],
        ),
      ),
    ));
  }
}
