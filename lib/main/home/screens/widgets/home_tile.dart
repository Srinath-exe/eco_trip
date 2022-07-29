import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:eco_trip/constants/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeTile extends StatefulWidget {
  String location;
  int no;
  String url;
  bool? mid;
  HomeTile(
      {super.key,
      this.mid = false,
      required this.location,
      required this.no,
      required this.url});

  @override
  State<HomeTile> createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Material(
        elevation: 30,
        shadowColor: white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        child: Container(
          // clipBehavior: Clip.hardEdge,
          width: widget.mid!
              ? Config().deviceWidth(context) * 0.33
              : Config().deviceWidth(context) * 0.26,
          height: widget.mid! ? 160 : 120,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.url), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        black.withOpacity(0.6),
                        Colors.transparent,
                        black.withOpacity(0.6),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.hiking_rounded,
                            color: white,
                          ),
                        ),
                        Text(
                          "${widget.no}",
                          style: mainText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "  Treks",
                          style: subText,
                        ),
                      ],
                    ),
                    Text(
                      widget.location,
                      style: mainText.copyWith(
                          color: white,
                          fontSize: widget.mid! ? 18 : 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
