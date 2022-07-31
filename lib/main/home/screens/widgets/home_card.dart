import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eco_trip/constants/config.dart';
import 'package:eco_trip/main/home/screens/home_screen.dart';
import 'package:eco_trip/main/home/screens/widgets/trek_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeCards extends StatefulWidget {
  const HomeCards({super.key});

  @override
  State<HomeCards> createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: Config().deviceHeight(context) * 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    clipBehavior: Clip.none,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    viewportFraction: 1),
                items: [
                  TrekCard(
                    location: "Banglore, Karnataka",
                    distance: "5.5 Kms",
                    name: "Nandhi Hills",
                    rating: "4.7",
                    url: "assets/images/card1.jpg",
                  ),
                  TrekCard(
                    location: "Banglore, Karnataka",
                    distance: "5.5 Kms",
                    name: "Nandhi Hills",
                    rating: "4.7",
                    url: "assets/images/nandhihills.jpg",
                  ),
                  TrekCard(
                    location: "Banglore, Karnataka",
                    distance: "5.5 Kms",
                    name: "Nandhi Hills",
                    rating: "4.7",
                    url: "assets/images/nandhihills.jpg",
                  ),
                  TrekCard(
                    location: "Banglore, Karnataka",
                    distance: "5.5 Kms",
                    name: "Nandhi Hills",
                    rating: "4.7",
                    url: "assets/images/nandhihills.jpg",
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
