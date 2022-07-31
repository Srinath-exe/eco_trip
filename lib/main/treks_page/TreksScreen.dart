import 'package:flutter/material.dart';

import '../appbar/customappbar.dart';
import 'widgets/trek_tile.dart';

class TreksScreen extends StatefulWidget {
  String location;
  TreksScreen({Key? key, required this.location}) : super(key: key);

  @override
  State<TreksScreen> createState() => _TreksScreenState();
}

class _TreksScreenState extends State<TreksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      AppBarMain(title: widget.location),
      Expanded(
        child: GridView(
          physics: BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          children: [
            // TrekTile(
            //   title: "Makalidurga",
            //   location: widget.location,
            //   imgUrl: "assets/images/trek1.webp",
            // ),
            // TrekTile(
            //   title: "Anthargange",
            //   location: widget.location,
            //   imgUrl: "assets/images/aboutus.jpg",
            // ),
            // TrekTile(
            //   title: "Ramadevara betta",
            //   location: widget.location,
            //   imgUrl: "assets/images/trek3.webp",
            // ),
            // TrekTile(
            //   title: "Makalidurga",
            //   location: widget.location,
            //   imgUrl: "assets/images/trek4.webp",
            // ),
          ],
        ),
      ),
    ])));
  }
}
