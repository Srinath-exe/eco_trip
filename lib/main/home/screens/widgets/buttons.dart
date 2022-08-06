import 'package:flutter/material.dart';

class ThemeButton extends StatefulWidget {
  String text;
  Function()? onTap;
  Color? bgColor;
  double? padding;
  double? width;
  double? height;
  double? elevation;
  Color? txtColor;
  bool? outlineButton;
  double? fontsize;
  Widget? child;

  ThemeButton(
      {Key? key,
      this.onTap,
      this.txtColor = Colors.white,
      this.elevation = 2,
      required this.text,
      this.bgColor = const Color(0xff0e4b40),
      this.padding = 10,
      this.height = 50,
      this.fontsize = 14,
      this.outlineButton = false,
      this.child,
      this.width = 240})
      : super(key: key);

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding!),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: OutlinedButton(
            onPressed: widget.onTap ?? () {},
            child: widget.child == null
                ? Text(widget.text,
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: widget.fontsize,
                        color: widget.outlineButton!
                            ? Colors.black
                            : widget.txtColor,
                        fontWeight: FontWeight.w500))
                : widget.child!,
            style: OutlinedButton.styleFrom(
                backgroundColor:
                    widget.outlineButton! ? Colors.transparent : widget.bgColor,
                shape: RoundedRectangleBorder(
                    side: widget.outlineButton!
                        ? BorderSide(width: 3, color: widget.bgColor!)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                elevation: widget.elevation,
                primary: Colors.white)),
      ),
    );
  }
}
