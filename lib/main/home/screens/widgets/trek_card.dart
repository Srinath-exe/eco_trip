import 'package:drop_shadow/drop_shadow.dart';
import 'package:eco_trip/constants/config.dart';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TrekCard extends StatefulWidget {
  String name;
  String location;
  String rating;
  String distance;
  String url;
  bool? tile;

  TrekCard(
      {Key? key,
      required this.distance,
      required this.location,
      required this.name,
      this.tile = false,
      required this.rating,
      required this.url})
      : super(key: key);

  @override
  State<TrekCard> createState() => _TrekCardState();
}

class _TrekCardState extends State<TrekCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ZoomTapAnimation(
        child: Material(
          elevation: 0,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              // Positioned(
              //   bottom: -10,
              //   child: Container(
              //     height: 180,
              //     clipBehavior: Clip.hardEdge,
              //     width: Config().deviceWidth(context) * 0.85,
              //     decoration: BoxDecoration(
              //         // image: const DecorationImage(
              //         //     opacity: 0.3,
              //         //     image: AssetImage("assets/images/nandhihills.jpg").,
              //         //     fit: BoxFit.fill),
              //         color: black,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: Container(
              //       color: Colors.black.withOpacity(0.4),
              //       child: Image.asset(widget.url, fit: BoxFit.fill)
              //           .blurred()
              //           .blurred(blur: 8, blurColor: black, colorOpacity: 0.4),
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: -18,
                child: DropShadow(
                  blurRadius: 4,
                  opacity: 0.5,
                  borderRadius: 20,
                  spread: 0.9,
                  offset: const Offset(0, 20),
                  child: Image.asset(
                    widget.url,
                    fit: BoxFit.cover,
                    height: 180,
                    width: Config().deviceWidth(context) * 0.8,
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 20,
                child: Container(
                  height: 220,
                  width: Config().deviceWidth(context) * 0.95,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.url), fit: BoxFit.fill),
                      color: white,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.hiking_rounded,
                          color: darkGrey,
                          size: 16,
                        ),
                      ),
                      Text(
                        widget.distance,
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 12),
                      ),
                    ],
                  ),
                ).frosted(
                    frostOpacity: 0.2, borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                bottom: -70,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 20,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            widget.location,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_border_rounded,
                            color: darkGreen,
                            size: 28,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.rating,
                            style: TextStyle(
                                fontSize: 16,
                                color: darkGrey,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            "assets/images/heart.png",
                            width: 24,
                          )
                        ],
                      )
                    ],
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
