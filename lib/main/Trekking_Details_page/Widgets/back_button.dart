import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import '../../../constants/config.dart';

enum BackButtonTheme { light, dark, green }

ThemeValues getTheme(BackButtonTheme theme) {
  ThemeValues light = ThemeValues(primary: darkGreen, secondary: white);
  ThemeValues dark = ThemeValues(primary: darkGreen, secondary: black);
  ThemeValues green = ThemeValues(primary: white, secondary: darkGreen);
  switch (theme) {
    case BackButtonTheme.dark:
      return dark;

    case BackButtonTheme.green:
      return green;

    case BackButtonTheme.light:
      return light;

    default:
      return green;
  }
}

class ThemeValues {
  ThemeValues({required this.primary, required this.secondary});
  Color primary;
  Color secondary;
}

class CustomBackButton extends StatefulWidget {
  final void Function()? onTap;
  IconData icon;
  BackButtonTheme theme;
  double size;
  bool? ez;
  CustomBackButton(
      {Key? key,
      this.onTap,
      this.ez = false,
      this.size = 55,
      this.icon = Icons.arrow_back_ios_new_rounded,
      this.theme = BackButtonTheme.green})
      : super(key: key);

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = Config().deviceHeight(context) * (widget.size * 0.001);
    ThemeValues themeColor = getTheme(widget.theme);
    return Padding(
        padding: EdgeInsets.only(
          right: 8.0,
          top: 8,
          left: widget.ez == true ? 0 : 8,
          bottom: 8,
        ),
        child: Container(
          width: widget.ez == true ? size * 1.5 : size,
          height: widget.ez == true ? size + 5 : size,
          child: Material(
            elevation: 10,
            shadowColor: grey,
            borderRadius: widget.ez == true
                ? const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12))
                : const BorderRadius.all(Radius.circular(12)),
            clipBehavior: Clip.hardEdge,
            color: themeColor.secondary.withOpacity(1),
            child: Ink(
              // width: size,
              // height: size,
              child: InkWell(
                splashColor: Colors.green,
                onTap: widget.onTap,
                child: Row(
                  mainAxisAlignment: widget.ez == true
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: widget.ez == true ? 16.0 : 0,
                          left: widget.ez == true ? 0 : 2),
                      child: Icon(
                        widget.icon,
                        color: themeColor.primary,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        // .frosted(
        //   borderRadius: widget.ez == true
        //       ? const BorderRadius.only(
        //           topRight: Radius.circular(12), bottomRight: Radius.circular(12))
        //       : const BorderRadius.all(Radius.circular(0)),
        // ),
        );
  }
}

class CustomIconButton extends StatefulWidget {
  final Function onTap;
  IconData iconData;

  CustomIconButton({Key? key, required this.onTap, required this.iconData})
      : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  void initState() {
    if (widget.onTap == null) {
      Navigator.pop(context);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          clipBehavior: Clip.hardEdge,
          color: const Color(0xff24A645).withOpacity(0.07),
          child: Center(
            child: Ink(
              width: 32.0,
              height: 32.0,
              child: InkWell(
                splashColor: const Color(0xff24A645).withOpacity(0.5),
                onTap: () {
                  widget.onTap();
                },
                child: Center(
                  child: Icon(
                    widget.iconData,
                    color: const Color(0xff24A645),
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
//             height: 32,
//             width: 32,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 color: Colors.white.withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(10)),
//             alignment: Alignment.center,
//             child: const Icon(
//               Icons.arrow_back_ios_new_rounded,
//               color: Colors.black,
//             ),
//           ),
