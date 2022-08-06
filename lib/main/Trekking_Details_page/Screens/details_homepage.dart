import 'package:eco_trip/main/Trekking_Details_page/Screens/panel_pages.dart';
import 'package:eco_trip/main/home/screens/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:blur/blur.dart';

import '../../../constants/config.dart';
import '../../About_Us_page/Screens/aboutus_page.dart';
import '../Widgets/back_button.dart';

class TrekDetailslMainpage extends StatefulWidget {
  const TrekDetailslMainpage({Key? key}) : super(key: key);

  @override
  State<TrekDetailslMainpage> createState() => TrekDetailslMainpageState();
}

class TrekDetailslMainpageState extends State<TrekDetailslMainpage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  late PanelController panelController = PanelController();
  bool open = false;
  bool fav = false;
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
            ? BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))
            : BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        minHeight: Config().deviceHeight(context) * 0.28,
        maxHeight: MediaQuery.of(context).size.height * 0.87,
        panel: PanelPage(open: open),
        header: headerui(),
        body: Stack(children: [
          trekimg(),
          Positioned(
              top: Config().deviceHeight(context) * 0.4, child: trekinfo()),
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

  trekimg() {
    return Material(
      elevation: 20,
      child: Column(children: [
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
            child: const Image(
              image: AssetImage("assets/images/nandhihills.jpg"),
              fit: BoxFit.cover,
            )),
      ]),
    );
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
                      "Kaiwara Betta",
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
                      "Bangalore , Karnataka",
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
                  "If you are fascinated by mythology, pack your backpacks and head to Kaiwara, a little village in Chikballapur earlier known as Ekachakrapura. Situated about 65 km from Bengaluru,&nbsp :",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      letterSpacing: 0.4,
                      color: darkGrey,
                      fontSize: 14,
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
                    text: "Check Availability",
                    width: Config().deviceWidth(context) * 0.6,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Opacity(
              opacity: 0.2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Lottie.asset(
                  'assets/lottie/swipeup.json',
                  width: Config().deviceWidth(context) * 0.1,
                ),
              ),
            )
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
                  child: const Text(
                    "Kaiwara Betta",
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  )),
            ],
          ),
        ));
  }
}
