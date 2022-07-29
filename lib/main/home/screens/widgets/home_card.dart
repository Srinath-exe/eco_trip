import 'package:eco_trip/constants/config.dart';
import 'package:eco_trip/main/home/screens/home_screen.dart';
import 'package:eco_trip/main/home/screens/widgets/trek_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeCards extends StatefulWidget {
  const HomeCards({super.key});

  @override
  State<HomeCards> createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config().deviceHeight(context) * 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          title(title: "Popular Treks ", ontap: () {}),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [TrekCard()],
          )
        ],
      ),
    );
  }
}
