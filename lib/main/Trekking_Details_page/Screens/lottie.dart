import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/config.dart';

class Lot extends StatefulWidget {
  const Lot({super.key});

  @override
  State<Lot> createState() => _LotState();
}

class _LotState extends State<Lot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Lottie.asset(
        'assets/lottie/swipeup.json',
        width: Config().deviceWidth(context) * 0.1,
      ),
    );
  }
}
