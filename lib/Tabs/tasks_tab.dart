// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class TasksTab extends StatelessWidget {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          dateTextStyle: TextStyle(
            fontSize: 7,
          ),
          dayTextStyle: TextStyle(
            fontSize: 7,
          ),
          monthTextStyle: TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w500,
          ),
          daysCount: 365,
          selectionColor: Colors.blue.shade700,
          onDateChange: (date) {},
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: ListTile(
            title: Text("Title"),
            trailing: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: Icon(
                Icons.done,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(18)),
            ),
            subtitle: Text("description"),
            leading: Container(
              color: Colors.blue,
              width: 4,
            ),
          ),
        )
      ],
    );
  }
}
