import 'package:flutter/material.dart';

import '../../../../data/trek_data.dart';

class Overview extends StatefulWidget {
  bool open;
  Trek trek;
  Overview({Key? key, required this.open, required this.trek})
      : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: !widget.open ? NeverScrollableScrollPhysics() : null,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: List<Widget>.generate(widget.trek.imgs.length - 1,
                (index) => img(widget.trek.imgs[index + 1])).toList(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "About ${widget.trek.name}",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            widget.trek.description,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ]),
    );
  }

  img(String img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 150,
            child: Image(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
