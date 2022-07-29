// ignore_for_file: constant_identifier_names, non_constant_identifier_names, prefer_adjacent_string_concatenation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// String API_ROOT = 'https://karnatakaecotourism.com/api/mobile/';
// String API_TMNGR = '' + 'https://karnatakaecotourism.com/api/tmngr/';
// String ICON_ROOT = 'https://zts.afroaves.com/icons/';
String IMAGES = 'assets/images/';
String ICONS = 'assets/icons/';
String LOTTIE = 'assets/lottie/';

//printer
const CHANNEL = 'brother/print';

String Roboto = 'Roboto-Medium';
String Montserrat = 'Montserrat-VariableFont_wght';
String Nunito = 'Nunito-VariableFont_wght';

class Config {
  double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double deviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

//Colors

Color lightgreen = const Color(0xff60ad9d);
Color darkGreen = const Color(0xff0e4b40);
Color green = const Color(0xffADBEAF);
Color grey = Colors.grey.shade300;
Color darkGrey = Colors.grey.shade600;
Color black = Colors.black;
Color white = Colors.white;

//textfields

TextStyle mainText = TextStyle(fontSize: 16, color: white);
TextStyle subText = TextStyle(
    fontSize: 12, color: white.withOpacity(0.9), fontWeight: FontWeight.w600);
TextStyle Heading = TextStyle(fontSize: 16, color: black);
TextStyle helpText = TextStyle(fontSize: 16, color: black);
