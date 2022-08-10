import 'package:eco_trip/main/Trekking_Details_page/Screens/details_homepage.dart';
import 'package:eco_trip/main/navpage/main_page.dart';
import 'package:flutter/material.dart';

import 'data/trek_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          primarySwatch: Colors.blue,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
            },
          ),
        ),
        home: MainPage());
  }
}
