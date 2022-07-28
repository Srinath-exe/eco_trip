import 'package:flutter/material.dart';

class HomeBox2 extends StatefulWidget {
  String title;
  String content;
  Function onExpandPressed;
  String image;
  HomeBox2({
    Key? key,
    required this.content,
    required this.image,
    required this.onExpandPressed,
    required this.title,
  }) : super(key: key);

  @override
  State<HomeBox2> createState() => _HomeBox2State();
}

class _HomeBox2State extends State<HomeBox2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            //title
            //style heading 2 with font
            Text(widget.title),
            //style body2
            Text(widget.content),
            Row(
              children: [
                //image
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            widget.image,
                          ),
                          fit: BoxFit.contain)),
                  child: Container(),
                ),
                // read more button
                Container(
                    //add color of secondary swatch2
                    color: Colors.red,
                    child: Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_right),
                            onPressed: () {
                              widget.onExpandPressed();
                            })
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
