import 'package:eco_trip/constants/config.dart';
import 'package:eco_trip/main/Trekking_Details_page/Widgets/back_button.dart';
import 'package:flutter/material.dart';

class NewsDetail extends StatefulWidget {
  NewsDetail({Key? key}) : super(key: key);

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  String des =
      "Ever wondered how butterflies got their extravagant colored wings? Well, you could know even more. All you have to do is make sure to register for this beautiful butterfly and bee festival where you can watch, explore and learn about their species.";
  String des1 =
      "Take a walk with nature and identify different species of butterflies, share interesting facts about them, educate another on their life cycles and much more! Nothing gets better than spotting beautiful butterflies and bees in this weather in Bengaluru. Karnataka Ecotourism Development Board in association with Karnataka Forest department,The Bengaluru Butterfly Club, National Centre for Biological Sciences and Indian Foundation for Butterflies are coming together to make this happen! You could be a child or an adult, fascination towards butterflies don't have an age! We want you to cherish and connect with nature in all little and beautiful ways possible. Hop into Doresanipalya Forest Research Station, Arekere, Mico Layout on 23rd November 2019 and make sure you register with us to get the most of the festival.";
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
                    Container(
                      height: 60,
                      width: 600,
                      color: const Color(0xffF0FFF4),
                    ),
                    Image.asset(
                      "assets/images/news.jpg",
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
                Positioned(
                    left: 20,
                    bottom: 35,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: Config().deviceWidth(context) * 0.85,
                          decoration: const BoxDecoration(),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  child: Column(
                children: [
                  Text(
                    des,
                    style: TextStyle(fontSize: 16, color: darkGrey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    des1,
                    style: TextStyle(fontSize: 16, color: darkGrey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Program Itinerary",
                    style: TextStyle(
                        fontSize: 20,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    """
●  8:00 - 8:30: Registration

●  8:30 - 9:00: Posters on butterflies and bees

●  9:00 - 9:30: Breakfast

●  9:30 - 10:30: Butterfly walk

●  10:30 - 11:30: Planting of larval host plants butterflies

●  11:30 - 1:00: Presentations :
    Butterflies: Diversity and Conservation
    Pollinator Services and the Conservation
    The fascinating world of insects

●  1:00 - 1:30: Quiz for students

●  1:30 - 2:00: Prize distribution and Vote of Thanks

●  2:00 - 3:00: Lunch and closing of the public program.""",
                    style: TextStyle(fontSize: 14, color: darkGrey),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
