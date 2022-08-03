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
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Column(
        children: [
          Material(
            color: white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: InkWell(
              splashColor: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    layout2(),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: Config().deviceWidth(context) * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.8,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: Config().deviceHeight(context) * 0.01,
                          ),
                          Text(
                            widget.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: darkGrey,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Divider(
              thickness: 1.2,
              color: grey,
            ),
          ),
        ],
      ),
    );
  }

  layout2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: img(
          widget.imgurl,
        ),
      ),
    );
  }

  img(String img) {
    return Material(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image(
            image: AssetImage(img),
            fit: BoxFit.fill,
            width: 110,
            height: 70,
          )),
    );
  }
}
