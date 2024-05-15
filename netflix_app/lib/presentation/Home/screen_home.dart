import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/presentation/widgets/background_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';
import 'package:netflix_app/presentation/widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class screenHome extends StatelessWidget {
  const screenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (Notification) {
            final ScrollDirection direction = Notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  BackgroundCard(),
                  SizedBox(
                    height: 10,
                  ),
                  MainTitleCard(
                    title: 'Released in the past year',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainTitleCard(
                    title: 'Trending now',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Number_title_card(),
                  SizedBox(
                    height: 10,
                  ),
                  MainTitleCard(
                    title: 'Tense Dramas',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainTitleCard(
                    title: 'South Indian Cinema ',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      height: 90,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://pngimg.com/uploads/netflix/netflix_PNG22.png",
                                width: 55,
                                height: 55,
                              ),
                              Spacer(),
                              Icon(
                                Icons.cast,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "TV Shows",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Movies",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Categories",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : SizedBox(
                      height: 10,
                    )
            ],
          ),
        );
      },
    ));
  }
}
