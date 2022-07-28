import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../main.dart';

class SvgIcon extends StatefulWidget {
  final String path;
  final Color color;
  double size;
  SvgIcon({Key? key, required this.color, this.size = 24, required this.path})
      : super(key: key);
  @override
  _SvgIconState createState() => _SvgIconState();
}

class _SvgIconState extends State<SvgIcon> {
  Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  bool network = false;
  @override
  void initState() {
    hasNetwork().then((value) {
      setState(() {
        log("net $value");
        network = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: hasNetwork(),
        builder: (context, snapshot) {
          // if (!snapshot.hasData) return Container();
          // return snapshot.data ?? false
          //     ? SvgPicture.network('${ICONS}${widget.path}', color: widget.color,
          //         placeholderBuilder: (context) {
          //         return SvgPicture.asset(
          //           'assets/icons/Default.svg',
          //           color: widget.color,
          //         );
          //       })
          return SvgPicture.asset('assets/icons/${widget.path}',
              color: widget.color,
              height: widget.size, placeholderBuilder: (context) {
            return Container();
          });
        });
  }
}
