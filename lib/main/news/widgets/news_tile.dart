import 'package:flutter/material.dart';

import '../../../constants/config.dart';
import '../../Trekking_Details_page/Widgets/back_button.dart';

class NewsTile extends StatefulWidget {
  String title;
  String description;
  void Function()? ontap;
  String imgurl;
  NewsTile(
      {Key? key,
      required this.description,
      required this.imgurl,
      this.ontap,
      required this.title})
      : super(key: key);

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 12.0),
      child: Material(
        color: const Color(0xffD9EDD8),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
        child: InkWell(
          splashColor: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 24),
                ),
                SizedBox(
                  height: Config().deviceHeight(context) * 0.01,
                ),
                Text(
                  widget.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(
                  height: Config().deviceHeight(context) * 0.02,
                ),
                layout2()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row layout2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          child: img(widget.imgurl),
        ),
        Column(
          children: [
            CustomBackButton(
              icon: Icons.arrow_forward_ios,
            ),
            const Text(
              "See More..",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
            ),
          ],
        )
      ],
    );
  }

  img(String img) {
    return Material(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          height: 100,
          child: Image(
            image: AssetImage(img),
            fit: BoxFit.fitHeight,
          )),
    );
  }
}
