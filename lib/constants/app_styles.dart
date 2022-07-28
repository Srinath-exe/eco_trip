import 'package:flutter/material.dart';

class AppStyles {
  ButtonStyle authbutton = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), side: const BorderSide())),
  );

  ShapeBorder shapeBorder(double a) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(a));
}
