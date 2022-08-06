import 'package:flutter/material.dart';

import '../../constants/config.dart';
import '../Trekking_Details_page/Widgets/back_button.dart';
import '../navpage/main_page.dart';

class AppBarMain extends StatefulWidget {
  String title;
  AppBarMain({Key? key, required this.title}) : super(key: key);

  @override
  State<AppBarMain> createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 8.0,
          top: 8,
          bottom: 8,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBackButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
              ez: true,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4, horizontal: 20.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar();
    // Container(
    //   color: Colors.green,
    //   height: Config().deviceHeight(context) * 0.2,
    //   child: Row(
    //     mainAxisSize: MainAxisSize.max,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       CustomBackButton(),
    //       const Text(
    //         "sad",
    //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
    //       )
    //     ],
    //   ),
    // );
  }
}
