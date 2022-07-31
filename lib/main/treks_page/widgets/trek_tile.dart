import 'dart:ui';

import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:shadowed_image/shadowed_image.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../constants/config.dart';
import '../../Trekking_Details_page/Screens/details_homepage.dart';
import '../../Trekking_Details_page/Widgets/back_button.dart';
import 'package:blur/blur.dart';

class TrekTile extends StatefulWidget {
  String title;
  String location;
  String distance;
  void Function()? onTap;
  String imgUrl;
  BoxFit? fit;

  TrekTile(
      {Key? key,
      required this.location,
      this.onTap,
      required this.distance,
      required this.imgUrl,
      this.fit = BoxFit.fitHeight,
      required this.title})
      : super(key: key);

  @override
  State<TrekTile> createState() => _TrekTileState();
}

class _TrekTileState extends State<TrekTile> {
  @override
  Widget build(BuildContext context) {
    double width = Config().deviceWidth(context) * 0.42;
    double height = Config().deviceHeight(context) * 0.4;
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 65, top: 12),
      child: ZoomTapAnimation(
        child: Container(
          width: width,
          // height: height,

          child: Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              // Positioned(
              //   bottom: -12,
              //   child: Container(
              //     width: Config().deviceWidth(context) * 0.35,
              //     height: Config().deviceHeight(context) * 0.20,
              //     clipBehavior: Clip.hardEdge,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     child: DropShadow(
              //       child: Image.asset(
              //         widget.imgUrl,
              //         fit: BoxFit.cover,
              //         width: Config().deviceWidth(context) * 0.35,
              //         height: Config().deviceHeight(context) * 0.20,
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: -20,
                left: 10,
                right: 10,
                child: DropShadow(
                  blurRadius: 8,
                  spread: 0.9,
                  offset: const Offset(0, 20),
                  child: Image.asset(
                    widget.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: Config().deviceHeight(context) * 0.3,
                width: Config().deviceWidth(context) * 0.42,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imgUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              Positioned(
                right: 8,
                top: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.hiking_rounded,
                          color: darkGrey,
                          size: 16,
                        ),
                      ),
                      Text(
                        widget.distance,
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ).frosted(
                    frostOpacity: 0.2, borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                bottom: -65,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w500),
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
