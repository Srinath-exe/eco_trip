import 'dart:developer';

import 'package:eco_trip/main/home/screens/widgets/float_couralSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/config.dart';
import '../../news/widgets/news_tile.dart';
import '../../treks_page/widgets/trek_tile.dart';
import 'widgets/home_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? scale;
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
      _controller!.value = (10 / scrollController.offset).clamp(0.0, 1.0);
      _controller!.value == 0 ? scroll = false : scroll = true;
      scale!.value = (35 / scrollController.offset);
    });

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
      backgroundColor: darkGreen,
      body: Center(
        child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: Config().deviceHeight(context) * 0.1,
                  color: lightgreen,
                ),
                ScaleTransition(
                  scale: scale!,
                  child: Lottie.asset(
                    'assets/lottie/forest.json',
                    controller: _controller,
                    onLoaded: (composition) {
                      _controller!.stop();
                    },
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  height: _controller!.value == 1
                      ? Config().deviceHeight(context) * 0.1
                      : 0,
                  // color: Colors.yellow.withOpacity(0.1),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [HomeTile(), HomeTile(), HomeTile()],
                  ),
                ),
                SizedBox(
                  height: Config().deviceHeight(context) * 0.6,
                )
              ],
            )),
      ),
    );
  }

  title({required String title, required void Function()? ontap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
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

// ClipPath(
//   clipper: CurveClipper(),
//   child: Container(
//     color: Colors.green[900]!.withOpacity(0.8),
//     height: Config().deviceHeight(context) * 0.53,
//     child: SafeArea(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           // logo
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: Config().deviceHeight(context) * 0.1,
//                 width: Config().deviceWidth(context) * 0.35,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image:
//                             AssetImage(IMAGES + 'logo.png'))),
//               )
//             ],
//           ),
//           // text
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Row(
//                   children: const [
//                     Text(
//                       "Explore Karnataka",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 18),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Row(
//                   children: [
//                     const Text(
//                       "Ecotrails Landscape",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 8,
//           ),

//           FloatingCouraslSlider(),
// title(title: "Popular Treks", ontap: () {}),
//               Container(
//                 height: 200,
//                 color: Colors.transparent,
//                 child: GridView(
//                   scrollDirection: Axis.horizontal,
//                   gridDelegate:
//                       const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.8,
//                   ),
//                   children: [
//                     TrekTile(
//                       fit: BoxFit.fill,
//                       title: "Makalidurga",
//                       location: "Bangalore",
//                       imgUrl: "assets/images/trek1.webp",
//                     ),
//                     TrekTile(
//                       fit: BoxFit.fill,
//                       title: "Anthargange",
//                       location: "Bellary",
//                       imgUrl: "assets/images/aboutus.jpg",
//                     ),
//                     TrekTile(
//                       fit: BoxFit.fill,
//                       title: "Ramadevara betta",
//                       location: "Bangalore",
//                       imgUrl: "assets/images/trek3.webp",
//                     ),
//                     TrekTile(
//                       fit: BoxFit.fill,
//                       title: "Makalidurga",
//                       location: "Bangalore",
//                       imgUrl: "assets/images/trek4.webp",
//                     ),
//                   ],
//                 ),
//               ),

//         ],
//       ),
//     ),
//   ),
// ),
