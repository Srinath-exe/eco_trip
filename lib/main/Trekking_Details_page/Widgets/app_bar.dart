import 'package:flutter/material.dart';

import '../../../constants/config.dart';


class CustomAppBar extends StatefulWidget {
  Widget? leading;
  Widget? title;
  Widget? end;
  CustomAppBar({
    Key? key,
    this.end,
    this.leading,
    this.title,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => Custom_AppBarState();
}

class Custom_AppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.leading ?? Container(),
            Container(
                width: Config().deviceWidth(context) * 0.68,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.title ?? Container(),
                  ],
                )),
            widget.end ?? Container(),
          ]),
    );
  }
}
