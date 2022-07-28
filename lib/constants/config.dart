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

Color lightgreen = const Color(0xff60ad9d);
Color darkGreen = const Color(0xff0e4b40);
