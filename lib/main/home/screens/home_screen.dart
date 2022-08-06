import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eco_trip/main/home/screens/widgets/float_couralSlider.dart';
import 'package:eco_trip/main/home/screens/widgets/home_card.dart';
import 'package:eco_trip/main/home/screens/widgets/menubar.dart';
import 'package:eco_trip/main/home/screens/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../../constants/config.dart';
import '../../news/widgets/news_tile.dart';
import '../../treks_page/widgets/trek_tile.dart';
import 'widgets/home_tile.dart';

class HomeScreen extends StatefulWidget {
  Function()? onTap;
  HomeScreen({Key? key, this.onTap}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? scale;
  AnimationController? transitionController;

  ScrollController scrollController = ScrollController();

  double height = 0.1;
  bool scroll = false;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, value: 1, lowerBound: 0, upperBound: 1);
    scale = AnimationController(
        vsync: this, value: 1.5, upperBound: 1.5, lowerBound: 1.0);
    scrollController.addListener(() {
      _controller!.value = (20 / scrollController.offset).clamp(0.0, 1.0);
      _controller!.value == 0 ? scroll = false : scroll = true;
      scale!.value = (35 / scrollController.offset);
      transitionController!.value =
          (10 / scrollController.offset).clamp(0.42, 1.0);
      if (scale!.value == 1.5) {
        setState(() {
          scroll = false;
        });
      } else {
        setState(() {
          scroll = true;
        });
      }
    });

    transitionController = AnimationController(vsync: this, value: 1);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    scale!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                AnimatedPositioned(
                    top: !scroll
                        ? Config().deviceHeight(context) * 0.51
                        : Config().deviceHeight(context) * 0.4,
                    duration: const Duration(milliseconds: 100),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Container(
                        child: Lottie.asset(
                          'assets/lottie/transition.json',
                          width: Config().deviceWidth(context),
                          controller: transitionController,
                          onLoaded: (composition) {
                            _controller!.stop();
                          },
                        ),
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: Config().deviceHeight(context) * 0.1,
                      color: lightgreen,
                    ),
                    ScaleTransition(
                      scale: scale!,
                      child: Stack(
                        children: [
                          Lottie.asset(
                            'assets/lottie/forest.json',
                            controller: _controller,
                            onLoaded: (composition) {
                              _controller!.stop();
                            },
                          ),
                          AnimatedPositioned(
                              duration: const Duration(milliseconds: 200),
                              top: scroll ? -60 : 50,
                              left: 120,
                              right: 120,
                              child: Image.asset(
                                "assets/images/logo.png",
                                fit: BoxFit.fitWidth,
                                width: 10,
                              )),
                        ],
                      ),
                    ),
                    AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        height:
                            scroll ? 0 : Config().deviceHeight(context) * 0.05
                        // color: Colors.yellow.withOpacity(0.1),
                        ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CarouselSlider(
                          options: CarouselOptions(
                              height: 160.0,
                              clipBehavior: Clip.none,
                              autoPlay: false,
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.scale,
                              viewportFraction: 0.33),
                          items: [
                            HomeTile(
                              location: "Bengaluru",
                              no: 10,
                              url: "assets/images/bangalore1.jpg",
                            ),
                            HomeTile(
                              location: "Belagavi",
                              no: 5,
                              url: "assets/images/belagavi1.jpg",
                            ),
                            HomeTile(
                              location: "Chikkamagaluru ",
                              no: 3,
                              url: "assets/images/chikkamagaluru1.jpg",
                            ),
                            HomeTile(
                              location: "Bellari",
                              no: 3,
                              url: "assets/images/bellari.png",
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Treks",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: scroll ? black : white),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 14, color: scroll ? black : white),
                          )
                        ],
                      ),
                    ),
                    HomeCards(),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    left: 8,
                    right: 8,
                    top: scroll ? 250 : 300,
                    child: SearchBar()),
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    left: 8,
                    right: 8,
                    top: scroll ? 160 : -60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: widget.onTap,
                            child: Icon(
                              Icons.menu_rounded,
                              size: 32,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}

title({required String title, required void Function()? ontap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        GestureDetector(
          onTap: ontap,
          child: Text(
            "See all",
            style: TextStyle(
                color: Colors.green.shade800,
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
        )
      ],
    ),
  );
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 15;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
