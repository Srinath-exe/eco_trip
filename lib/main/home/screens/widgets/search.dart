import 'package:eco_trip/constants/config.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config().deviceWidth(context) * 0.9,
      height: 60,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.asset(
              "assets/images/search.png",
              width: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Explore..",
              style: mainText.copyWith(color: darkGrey),
            )
          ]),
          CircleAvatar(
            radius: 24,
            backgroundColor: grey.withOpacity(0.4),
            child: Image.asset(
              "assets/images/filter.png",
              width: 20,
            ),
          )
        ],
      ),
    );
  }
}
