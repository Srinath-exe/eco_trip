import 'package:eco_trip/main/news/widgets/news_card.dart';
import 'package:flutter/material.dart';

import '../../../constants/config.dart';
import '../../appbar/customappbar.dart';
import '../widgets/news_tile.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBarMain(title: "News"),
              NewsCard(),
              SizedBox(
                height: 12,
              ),
              appBar("News & Events Details"),
              NewsTile(
                title: "Ecotrails Landscape",
                description:
                    "The Karnataka Forest Department has come out with a Coffee Table book. The book focuses on the lives of the ",
                imgurl: IMAGES + "news1.jpeg",
              ),
              NewsTile(
                title: "BIRD FESTIVAL 2020",
                description:
                    "Nandi never ceases to spring surprises to birdwatchers with more than 200 species of birds. From spotting unusual birds like...",
                imgurl: IMAGES + "news2.jpg",
              ),
              NewsTile(
                title: "Ecotrails Landscape",
                description:
                    "The Karnataka Forest Department has come out with a Coffee Table book. The book focuses on the lives of the ",
                imgurl: IMAGES + "news1.jpeg",
              ),
              NewsTile(
                title: "BIRD FESTIVAL 2020",
                description:
                    "Nandi never ceases to spring surprises to birdwatchers with more than 200 species of birds. From spotting unusual birds like...",
                imgurl: IMAGES + "news2.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

appBar(String title) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 22, color: black),
        ),
        Text(
          "See all",
          style: TextStyle(fontSize: 14, color: black),
        )
      ],
    ),
  );
}
