import 'package:carousel_slider/carousel_slider.dart';
import 'package:eco_trip/main/Trekking_Details_page/Screens/lottie.dart';
import 'package:eco_trip/main/Trekking_Details_page/Screens/panel_pages.dart';
import 'package:eco_trip/main/home/screens/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/config.dart';
import '../../../data/trek_data.dart';
import '../Widgets/back_button.dart';

class TrekDetailslMainpage extends StatefulWidget {
  Trek trek;
  TrekDetailslMainpage({Key? key, required this.trek}) : super(key: key);

  @override
  State<TrekDetailslMainpage> createState() => TrekDetailslMainpageState();
}

class TrekDetailslMainpageState extends State<TrekDetailslMainpage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  late PanelController panelController = PanelController();
  PageController controller = new PageController();
  bool open = false;
  bool fav = false;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      key: scaffoldkey,
      body: SlidingUpPanel(
        onPanelSlide: (val) {
          setState(() {
            open = false;
          });
        },
        onPanelOpened: () {
          setState(() {
            open = true;
          });
        },
        onPanelClosed: () {
          setState(() {
            open = false;
          });
        },
        boxShadow: [
          BoxShadow(
              blurRadius: 20.0,
              color: open ? Colors.transparent : Colors.black.withOpacity(0.4))
        ],
        isDraggable: true,
        controller: panelController,
        borderRadius: !open
            ? const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))
            : const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        minHeight: Config().deviceHeight(context) * 0.28,
        maxHeight: MediaQuery.of(context).size.height * 0.87,
        panel: PanelPage(open: open, trek: widget.trek),
        header: headerui(),
        body: Stack(
            // alignment: AlignmentDirectional.centerStart,
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                widget.trek.imgs[0],
                height: Config().deviceHeight(context) * 0.42,
                width: Config().deviceWidth(context),
                fit: BoxFit.cover,
              ),
              Container(
                height: Config().deviceHeight(context) * 0.42,
                width: Config().deviceWidth(context),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      black.withOpacity(0.4)
                    ])),
              ),
              // CarouselSlider(
              //   options: CarouselOptions(
              //       onPageChanged: (index, reason) {
              //         _currentIndex = index;
              //         setState(() {});
              //       },
              //       aspectRatio: 16 / 14,
              //       clipBehavior: Clip.none,
              //       autoPlay: false,
              //       enlargeCenterPage: true,
              //       enlargeStrategy: CenterPageEnlargeStrategy.scale,
              //       viewportFraction: 1),
              //   items: List<Widget>.generate(widget.trek.imgs.length,
              //       (index) => trekimg(widget.trek.imgs[index])).toList(),
              // ),
              // Positioned(
              //     left: Config().deviceWidth(context) * 0.3,
              //     right: Config().deviceWidth(context) * 0.3,
              //     top: Config().deviceHeight(context) * 0.35,
              //     child: AnimatedSmoothIndicator(
              //       activeIndex: _currentIndex,
              //       count: widget.trek.imgs.length,
              //       effect: SwapEffect(
              //           activeDotColor: white,
              //           radius: 16,
              //           dotWidth: 26,
              //           dotHeight: 4,
              //           dotColor: Colors.white60),
              //     )),
              Positioned(
                  top: Config().deviceHeight(context) * 0.43,
                  child: trekinfo()),
              slideopen(),
              !open
                  ? SafeArea(
                      child: CustomBackButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        ez: true,
                      ),
                    )
                  : Container(),
            ]),
      ),
    );
  }

  trekimg(String url) {
    return Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -25,
            child: DropShadow(
              blurRadius: 4,
              opacity: 0.5,
              borderRadius: 20,
              spread: 1,
              offset: const Offset(0, 20),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
                width: Config().deviceWidth(context) * 1,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: grey,
                  ),
                  BoxShadow(
                    color: grey,
                    spreadRadius: -12.0,
                    blurRadius: 12.0,
                  ),
                ],
              ),
              height: Config().deviceHeight(context) * 0.4,
              width: Config().deviceWidth(context),
              child: Material(
                elevation: 20,
                child: Image(
                  image: AssetImage(url),
                  fit: BoxFit.cover,
                ),
              )),
        ]);
  }

  Container trekinfo() {
    return Container(
      width: Config().deviceWidth(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.trek.name,
                      style: TextStyle(
                          letterSpacing: 0.6,
                          color: black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${widget.trek.location}, Karnataka",
                      style: TextStyle(
                          color: black.withOpacity(0.4),
                          fontSize: 14,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                ThemeButton(
                  text: "",
                  width: 60,
                  height: 50,
                  elevation: 0,
                  bgColor: white,
                  child: Icon(
                    Icons.favorite_rounded,
                    size: 28,
                    color: fav ? grey : Colors.red,
                  ),
                  onTap: () {
                    setState(() {
                      fav = !fav;
                    });
                  },
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: Config().deviceWidth(context) * 0.9,
                child: Text(
                  widget.trek.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      letterSpacing: 0.4,
                      color: darkGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ThemeButton(
                    elevation: 4,
                    text: "Book Now",
                    width: Config().deviceWidth(context) * 0.6,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Opacity(opacity: 0.2, child: Lot())
          ],
        ),
      ),
    );
  }

  Widget headerui() {
    return Container(
      width: Config().deviceWidth(context),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
              color: darkGreen, borderRadius: BorderRadius.circular(100)),
        ),
      ),
    );
  }

  slideopen() {
    return AnimatedOpacity(
        opacity: open ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Container(
          height: Config().deviceHeight(context) * 0.15,
          width: Config().deviceWidth(context),
          color: open ? Colors.white : Colors.transparent,
          child: Stack(
            children: [
              SafeArea(
                child: CustomBackButton(
                  onTap: () {
                    setState(() {
                      panelController.close();
                      open = false;
                    });
                  },
                  ez: true,
                ),
              ),
              Positioned(
                  top: Config().deviceHeight(context) * 0.07,
                  right: Config().deviceHeight(context) * 0.03,
                  child: Text(
                    widget.trek.name,
                    style: const TextStyle(color: Colors.black, fontSize: 28),
                  )),
            ],
          ),
        ));
  }
}
