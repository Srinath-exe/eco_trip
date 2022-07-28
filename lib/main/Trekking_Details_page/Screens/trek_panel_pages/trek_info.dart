import 'package:flutter/material.dart';


class TrekInfo extends StatefulWidget {
  const TrekInfo({Key? key}) : super(key: key);

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
          Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  dataCell("Location", "Bangalore"),
                  dataCell("Length", "1.30 KM"),
                  dataCell("Duration", "3.00 Hour"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  dataCell("Difficulty", "Difficult"),
                  dataCell("Everyday", "6:30 AM"),
                ],
              ),
              dataCell("Start",
                  "Main Gate Of  Kaiwara Tapovana at Shamaraohosapete Village"),
              dataCell("Ends", "Mylapurabetta View Point"),
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

  dataCell(String title, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info,
            style: TextStyle(
                fontSize: 18,
                color: Colors.green.shade900,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14),
          )
        ],
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
