import 'package:carousel_slider/carousel_slider.dart';
import 'package:eco_trip/constants/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:blur/blur.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                imgs("assets/images/news.jpg"),
                Positioned(
                    left: 20,
                    bottom: 35,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: Config().deviceWidth(context) * 0.75,
                          decoration: BoxDecoration(),
                          child: Column(children: const [
                            Text(
                              "About Butterfly & Bee Festival 23rd Nov 2019",
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26),
                            ),
                          ]),
                        ))),
                Positioned(
                    bottom: 10,
                    child: Row(
                      children: [
                        ind(true),
                        ind(false),
                        ind(false),
                      ],
                    )),
              ],
            )));
  }

  imgs(String url) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 20,
      shadowColor: Colors.grey.shade100.withOpacity(0.5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          url,
          fit: BoxFit.fill,
          width: 360,
          height: 360,
        ),
      ),
    );
  }

  ind(bool ds) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 30,
        height: 4,
        decoration: BoxDecoration(
            color: ds ? black : grey, borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
