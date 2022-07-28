import 'package:flutter/material.dart';

class NatureGuides extends StatefulWidget {
  const NatureGuides({Key? key}) : super(key: key);

  @override
  State<NatureGuides> createState() => _NatureGuidesState();
}

class _NatureGuidesState extends State<NatureGuides> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        table()
      ],
    );
  }

  table() {
    return DataTable(
        border: const TableBorder(horizontalInside: BorderSide.none),
        columnSpacing: 30,
        columns: [
          header("Sl.No"),
          header("Name"),
          header("Nature Guide ID"),
        ],
        rows: [
          data("1", "Akhil V", "CNG/BNG/232/2020-21"),
          data("2", "Santhosh R", "CNG/BNG/230/2020-21"),
          data("3", "Suresh", "CNG/BNG/231/2020-21"),
        ]);
  }

  data(String slno, name, id) {
    return DataRow(
      cells: <DataCell>[
        DataCell(Text(slno)),
        DataCell(Text(name)),
        DataCell(Text(id)),
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
