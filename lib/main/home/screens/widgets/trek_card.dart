import 'dart:ui';

import 'package:eco_trip/constants/config.dart';
import 'package:flutter/material.dart';

class TrekCard extends StatefulWidget {
  TrekCard({Key? key}) : super(key: key);

  @override
  State<TrekCard> createState() => _TrekCardState();
}

class _TrekCardState extends State<TrekCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -10,
            child: Container(
              height: 180,
              clipBehavior: Clip.hardEdge,
              width: Config().deviceWidth(context) * 0.85,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      opacity: 0.4,
                      image: AssetImage("assets/images/card1.jpg"),
                      fit: BoxFit.fill),
                  color: white,
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          Container(
            height: 220,
            width: Config().deviceWidth(context) * 0.95,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/card1.jpg"),
                    fit: BoxFit.fill),
                color: white,
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
