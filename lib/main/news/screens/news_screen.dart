import 'package:eco_trip/data/news_data.dart';
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
              Column(
                children: List.generate(
                    news.length,
                    (index) => NewsTile(
                          news: news[index],
                        )).toList(),
              ),
              SizedBox(
                height: 40,
              )
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
