import 'package:drop_shadow/drop_shadow.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:eco_trip/data/trek_data.dart';
import 'package:eco_trip/main/home/screens/widgets/home_card.dart';
import 'package:eco_trip/main/home/screens/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:shadowed_image/shadowed_image.dart';

import '../../../constants/config.dart';
import '../../../widgets/DateTile.dart';
import '../../../widgets/dropdownTextField.dart';
import '../appbar/customappbar.dart';
import '../treks_page/widgets/trek_tile.dart';

class SubTrek extends StatefulWidget {
  String name;
  List<Trek> treks;
  SubTrek({Key? key, required this.name, required this.treks})
      : super(key: key);

  @override
  State<SubTrek> createState() => _SubTrekState();
}

class _SubTrekState extends State<SubTrek> {
  late DateTime date;
  DateTime now = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        AppBarMain(
          title: widget.name,
        ),
        SizedBox(
          height: 12,
        ),
        SearchBar(
          color: lightgreen.withOpacity(0.2),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: Config().deviceHeight(context) * 0.6,
          width: Config().deviceWidth(context),
          child: GridView(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            children: List.generate(
                widget.treks.length,
                (index) => TrekTile(
                      trek: widget.treks[index],
                    )).toList(),
          ),
        ),
      ],
    )));
  }

  Widget sup(Trek trek) {
    return TrekTile(
      trek: trek,
    );
  }
}
