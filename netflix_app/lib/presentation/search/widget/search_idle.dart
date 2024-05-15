import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/search/widget/title.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w355_and_h200_multi_faces/uLhWh1pggjIiQ1DpL0DvaIgERQR.jpg"
    "https://media.themoviedb.org/t/p/w355_and_h200_multi_faces/3JhQQFidqbrD9k9DxGFCba46EFk.jpg,";

class searchidle extends StatelessWidget {
  const searchidle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        searchtitle(title: 'Top Searches'),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => topsearchitemtile(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: 10),
        )
      ],
    );
  }
}

class topsearchitemtile extends StatelessWidget {
  const topsearchitemtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://media.themoviedb.org/t/p/w355_and_h200_multi_faces/uLhWh1pggjIiQ1DpL0DvaIgERQR.jpg"),
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          "Movie Name",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              border: Border.all(width: 1.8, color: Colors.white),
              color: Colors.black,
              borderRadius: BorderRadius.circular(35)),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
