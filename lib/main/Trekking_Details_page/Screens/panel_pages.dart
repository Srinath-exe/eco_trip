import 'package:eco_trip/main/Trekking_Details_page/Screens/trek_panel_pages/map.dart';
import 'package:eco_trip/main/Trekking_Details_page/Screens/trek_panel_pages/nature_guides.dart';
import 'package:eco_trip/main/Trekking_Details_page/Screens/trek_panel_pages/overview.dart';
import 'package:eco_trip/main/Trekking_Details_page/Screens/trek_panel_pages/trek_info.dart';
import 'package:flutter/material.dart';

import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';

class PanelPage extends StatefulWidget {
  bool open;
  PanelPage({Key? key, required this.open}) : super(key: key);

  @override
  State<PanelPage> createState() => _PanelPageState();
}

class _PanelPageState extends State<PanelPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
      child: TitleScrollNavigation(
        barStyle: const TitleNavigationBarStyle(
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          spaceBetween: 35,
          background: Colors.white,
        ),
        identiferStyle: NavigationIdentiferStyle(
            position: IdentifierPosition.bottomAndLeft,
            width: 100.0,
            borderRadius: BorderRadius.circular(20)),
        titles: const [
          "Overview",
          "Trek Info",
          "Map",
          "Nature Guides",
        ],
        pages: [
          Overview(open: widget.open),
          const TrekInfo(),
          const TrekMap(),
          const NatureGuides(),
        ],
      ),
    );
  }
}
