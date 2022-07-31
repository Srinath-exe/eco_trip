import 'package:drop_shadow/drop_shadow.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:eco_trip/main/home/screens/widgets/home_card.dart';
import 'package:eco_trip/main/home/screens/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:shadowed_image/shadowed_image.dart';

import '../../../constants/config.dart';
import '../../../widgets/DateTile.dart';
import '../../../widgets/dropdownTextField.dart';
import '../../appbar/customappbar.dart';
import '../../home/screens/widgets/trek_card.dart';
import '../../treks_page/widgets/trek_tile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController locationController = TextEditingController();

  TextEditingController trekController = TextEditingController();

  TextEditingController slotController = TextEditingController();

  late DateTime date;
  DateTime now = DateTime.now();
  @override
  void initState() {
    date = now;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        AppBarMain(title: "Search"),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     DropdownTextField(
        //       width: Config().deviceWidth(context) * 0.9,
        //       options: ['madikere', 'bengaluru', 'dsadsdsa'],
        //       onSelected: (e) {
        //         setState(() {
        //           locationController.text = e;
        //         });
        //       },
        //       labelText: "Select Location",
        //       controller: locationController,
        //     ),
        //   ],
        // ),
        SizedBox(
          height: 12,
        ),
        SearchBar(
          color: lightgreen.withOpacity(0.2),
        ),
        // Row(
        //   children: [
        //     DateTile(
        //         title: 'date',
        //         date: date,
        //         onTap: () => selectDate(
        //             date: date,
        //             context: context,
        //             onSelected: (selected) {
        //               setState(() {
        //                 date = selected;
        //               });
        //             })),
        //     DropdownTextField(
        //       width: Config().deviceWidth(context) * 0.45,
        //       options: ['6:00 AM', '4 :00 PM'],
        //       searchable: false,
        //       onSelected: (e) {
        //         setState(() {
        //           slotController.text = e;
        //         });
        //       },
        //       labelText: "Select Slot",
        //       controller: slotController,
        //     ),
        //   ],
        // ),
        SizedBox(
          height: 20,
        ),
        // Row(
        //   children: [
        //     TrekTile(
        //       title: "Makalidurga",
        //       location: "Bangalore",
        //       imgUrl: "assets/images/trek1.webp",
        //       distance: "5.5 Km",
        //     ),
        //     TrekTile(
        //       title: "Makalidurga",
        //       location: "Bangalore",
        //       imgUrl: "assets/images/trek1.webp",
        //       distance: "5.5 Km",
        //     ),
        //   ],
        // ),

        Expanded(
          child: GridView(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            children: [
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
              TrekTile(
                title: "Makalidurga",
                location: "Bangalore",
                imgUrl: "assets/images/trek1.webp",
                distance: "5.5 Km",
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
