import 'package:flutter/material.dart';

import '../../../constants/config.dart';
import '../../Trekking_Details_page/Screens/details_homepage.dart';
import '../../Trekking_Details_page/Widgets/back_button.dart';

class TrekTile extends StatefulWidget {
  String title;
  String location;
  void Function()? onTap;
  String imgUrl;
  BoxFit? fit;

  TrekTile(
      {Key? key,
      required this.location,
      this.onTap,
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
    double width = Config().deviceWidth(context) * 0.5;
    double height = Config().deviceHeight(context) * 0.8;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Container(
            // height: height,
            // width: width,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    widget.imgUrl,
                  ),
                  fit: widget.fit),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.green.withOpacity(0.2),
              highlightColor: Colors.transparent,
              onTap: () {},
              child: Container(
                // height: height,
                // width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                        Colors.black
                      ],
                    )),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: bottomLayout(),
          )
        ],
      ),
    );
  }

  bottomLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Config().deviceWidth(context) * 0.27,
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                ),
              ),
              SizedBox(
                height: Config().deviceHeight(context) * 0.005,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Config().deviceWidth(context) * 0.01,
                  ),
                  Text(
                    widget.location,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomBackButton(
          size: 40,
          theme: BackButtonTheme.light,
          icon: Icons.arrow_forward_ios_rounded,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrekDetailslMainpage(),
              ),
            );
          },
        )
      ],
    );
  }
}
