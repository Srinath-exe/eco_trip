import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTile extends StatefulWidget {
  String title;
  DateTime? date;
  TimeOfDay? time;
  void Function()? onTap;

  DateTile({Key? key, this.date, this.time, this.onTap, required this.title}) : super(key: key);

  @override
  _DateTileState createState() => _DateTileState();
}

class _DateTileState extends State<DateTile> {
  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm(); //"6:00 AM"
    return format.format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: widget.title == ''
                  ? Container()
                  : Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: widget.onTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            widget.time == null
                                ? DateFormat("dd-MM-yyyy").format(widget.date!)
                                : formatTimeOfDay(widget.time!),
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> selectDate(
    {required DateTime date, required Function onSelected, required BuildContext context}) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: date,
    firstDate: DateTime(2015, 8),
    lastDate: DateTime(2101),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.dark(
            primary: Theme.of(context).colorScheme.onSecondary,
            onPrimary: Theme.of(context).colorScheme.primary,
            surface: Theme.of(context).colorScheme.primary,
            onSurface: Theme.of(context).colorScheme.onSecondary,
          ),

          // primaryColor: Colors.white,
          dialogBackgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: child ?? Container(),
      );
    },
  );

  if (picked != null && picked != date) onSelected(picked);
}
