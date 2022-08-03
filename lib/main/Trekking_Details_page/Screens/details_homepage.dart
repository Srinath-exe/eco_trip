import 'package:eco_trip/main/Trekking_Details_page/Screens/panel_pages.dart';
import 'package:flutter/material.dart';

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
          BoxShadow(blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0))
        ],
        isDraggable: true,
        controller: panelController,
        borderRadius: const BorderRadius.only(
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
                  child: CustomBackButton(onTap: () {
                    Navigator.pop(context);
                  }),
                )
              : Container(),
        ]),
      ),
    );
  }

  trekimg() {
    return Container(
      child: Column(children: [
        Container(
            height: Config().deviceHeight(context) * 0.5,
            width: Config().deviceWidth(context),
            child: const Image(
              image: AssetImage("assets/images/trekdetail.webp"),
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
            SizedBox(
              height: Config().deviceHeight(context) * 0.07,
            ),
            const Text(
              "Kaiwara Betta",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Bangalore",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: Config().deviceWidth(context) * 0.9,
                child: const Text(
                  "If you are fascinated by mythology, pack your backpacks and head to Kaiwara, a little village in Chikballapur earlier known as Ekachakrapura. Situated about 65 km from Bengaluru,&nbsp :",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 36, vertical: 12)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xAA0C5E06))),
                      onPressed: () {},
                      child: const Text("Check Availabilty")),
                ],
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
              color: Colors.grey.withOpacity(0.9),
              borderRadius: BorderRadius.circular(100)),
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
                child: CustomBackButton(onTap: () {
                  setState(() {
                    panelController.close();
                    open = false;
                  });
                }),
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
