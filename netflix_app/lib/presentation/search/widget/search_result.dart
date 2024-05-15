import 'package:flutter/cupertino.dart';
import 'package:netflix_app/presentation/search/widget/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/h3jYanWMEJq6JJsCopy1h7cT2Hs.jpg";

class searchResultwidget extends StatelessWidget {
  const searchResultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        searchtitle(title: "Movies & Tv"),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: GridView.count(
          childAspectRatio: 1 / 1.4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return const MainCArd();
          }),
        ))
      ],
    );
  }
}

class MainCArd extends StatelessWidget {
  const MainCArd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
