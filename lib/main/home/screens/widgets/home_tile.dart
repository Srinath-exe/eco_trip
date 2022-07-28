import 'package:eco_trip/constants/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeTile extends StatefulWidget {
  const HomeTile({super.key});

  @override
  State<HomeTile> createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config().deviceWidth(context) * 0.28,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amber),
      // child: ,
    );
  }
}
