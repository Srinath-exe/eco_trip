import 'package:eco_trip/constants/config.dart';
import 'package:flutter/material.dart';

import '../../../../data/trek_data.dart';

class TrekInfo extends StatefulWidget {
  Trek trek;
  TrekInfo({Key? key, required this.trek}) : super(key: key);

  @override
  State<TrekInfo> createState() => _TrekInfoState();
}

class _TrekInfoState extends State<TrekInfo> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          // Wrap(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         dataCell("Location", "Bangalore"),
          //         dataCell("Length", "1.30 KM"),
          //         dataCell("Duration", "3.00 Hour"),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         dataCell("Difficulty", "Difficult"),
          //         dataCell("Everyday", "6:30 AM"),
          //       ],
          //     ),
          //     dataCell("Start",
          //         "Main Gate Of  Kaiwara Tapovana at Shamaraohosapete Village"),
          //     dataCell("Ends", "Mylapurabetta View Point"),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.trek.location} ,Karnataka",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              )
            ],
          ),
          Stack(
            children: [
              Image.asset("assets/images/trekmap.png"),
              Positioned(
                  top: 42,
                  child: SizedBox(
                    width: Config().deviceWidth(context) * 0.5,
                    child: dataCell("Start", widget.trek.start, sike: true),
                  )),
              Positioned(
                  top: 160,
                  left: 20,
                  child: dataCell("Distance", "${widget.trek.length} Km")),
              Positioned(
                  left: 210,
                  top: 385,
                  child: dataCell("Duration", "${widget.trek.duration} Hrs")),
              Positioned(
                  top: 240,
                  left: 150,
                  child: dataCell("Everyday at", widget.trek.time)),
              Positioned(
                  top: 430,
                  left: 0,
                  child: dataCell("Difficulty", widget.trek.difficulty)),
              Positioned(
                  bottom: 50,
                  left: 150,
                  child: dataCell("End", widget.trek.end, sike: true)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Fees",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ),
          table()
        ],
      ),
    );
  }

  dataCell(String title, String info, {bool? sike}) {
    sike == null ? sike = false : null;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
      child: Material(
        color: sike ? Colors.transparent : white,
        shadowColor: sike
            ? Colors.transparent
            : const Color(0xff8BC543).withOpacity(0.5),
        elevation: sike ? 0 : 20,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }

  table() {
    return DataTable(
        border: const TableBorder(horizontalInside: BorderSide.none),
        columnSpacing: 30,
        columns: [
          header("Day's"),
          header("Fees / \n Adult"),
          header("Fees / \n Child"),
          header("Fees / \n Student"),
        ],
        rows: [
          data("Sunday's"),
          data("Monday's"),
          data("Tuesdays's"),
          data("Wednesday's"),
          data("Thursday's"),
          data("Friday's"),
          data("Saturday's"),
        ]);
  }

  data(String day) {
    return DataRow(
      cells: <DataCell>[
        DataCell(Text(
          day,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        )),
        const DataCell(Text('250.00')),
        const DataCell(Text('125.00')),
        const DataCell(Text('125.00')),
      ],
    );
  }

  header(String title) {
    return DataColumn(
      label: Text(
        title,
        style: const TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }
}
