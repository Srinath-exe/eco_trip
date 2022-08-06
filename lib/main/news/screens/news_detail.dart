import 'package:eco_trip/constants/config.dart';
import 'package:eco_trip/main/Trekking_Details_page/Widgets/back_button.dart';
import 'package:eco_trip/main/news/screens/news_screen.dart';
import 'package:flutter/material.dart';

import '../../../data/news_data.dart';

class NewsDetail extends StatefulWidget {
  News news;
  NewsDetail({Key? key, required this.news}) : super(key: key);

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    appBar(""),
                    Image.asset(
                      widget.news.imgs[0],
                      fit: BoxFit.fitWidth,
                      width: Config().deviceWidth(context),
                    ),
                  ],
                ),

                Positioned(
                    top: 10,
                    left: 10,
                    child: SafeArea(child: CustomBackButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ))),
                // Positioned(
                //     left: 20,
                //     bottom: 35,
                //     child: ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: Config().deviceWidth(context) * 0.85,
                        decoration: const BoxDecoration(),
                        child: Column(children: [
                          Text(
                            widget.news.title,
                            style: const TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.8,
                                fontWeight: FontWeight.w600,
                                fontSize: 26),
                          ),
                        ]),
                      )),
                  Text(
                    widget.news.description,
                    style: TextStyle(fontSize: 16, color: darkGrey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Text(
                  //   des1,
                  //   style: TextStyle(fontSize: 16, color: darkGrey),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Text(
                  //   "Program Itinerary",
                  //   style: TextStyle(
                  //       fontSize: 20,
                  //       color: black,
                  //       fontWeight: FontWeight.w600),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
//                   Text(
//                     """
// ●  8:00 - 8:30: Registration

// ●  8:30 - 9:00: Posters on butterflies and bees

// ●  9:00 - 9:30: Breakfast

// ●  9:30 - 10:30: Butterfly walk

// ●  10:30 - 11:30: Planting of larval host plants butterflies

// ●  11:30 - 1:00: Presentations :
//     Butterflies: Diversity and Conservation
//     Pollinator Services and the Conservation
//     The fascinating world of insects

// ●  1:00 - 1:30: Quiz for students

// ●  1:30 - 2:00: Prize distribution and Vote of Thanks

// ●  2:00 - 3:00: Lunch and closing of the public program.""",
//                     style: TextStyle(fontSize: 14, color: darkGrey),
//                   ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
