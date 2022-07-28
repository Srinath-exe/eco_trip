import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../constants/config.dart';
import '../../../Trekking_Details_page/Widgets/back_button.dart';
import '../../../treks_page/TreksScreen.dart';

/// Floating Courasal Slider that is used
/// in home screen after heading
class FloatingCouraslSlider extends StatefulWidget {
  const FloatingCouraslSlider({Key? key}) : super(key: key);

  @override
  State<FloatingCouraslSlider> createState() => _FloatingCouraslSliderState();
}

class _FloatingCouraslSliderState extends State<FloatingCouraslSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        CarouselItem(
            image: "crousal1.png",
            name: "Bangalore",
            ontap: () => pushToTrekPage(context)),
        CarouselItem(
            image: "crousal2.png",
            name: "Belagavi",
            ontap: () => pushToTrekPage(context)),
        CarouselItem(
            image: "crousal3.png",
            name: "Bellary",
            ontap: () => pushToTrekPage(context)),
      ],
      options: CarouselOptions(
        height: Config().deviceHeight(context) * 0.25,
        autoPlay: true,
        autoPlayCurve: Curves.ease,
        enlargeCenterPage: true,
      ),
    );
  }
}

void pushToTrekPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => TreksScreen(
        location: "Bangalore",
      ),
    ),
  );
}

class CarouselItem extends StatelessWidget {
  String image;
  String name;
  Function() ontap;
  CarouselItem(
      {Key? key, required this.image, required this.name, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      elevation: 0,
      child: InkWell(
        onTap: ontap,
        splashColor: Colors.red,
        child: Ink(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(IMAGES + '$image'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff127855).withOpacity(0.5),
                        Color(0xff127855).withOpacity(0.8),
                        Color(0xff093C2B)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Config().deviceHeight(context) * 0.005,
                            ),
                            const Text(
                              "10 Treks",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        CustomBackButton(
                            icon: Icons.arrow_forward_ios,
                            theme: BackButtonTheme.dark,
                            onTap: ontap)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
