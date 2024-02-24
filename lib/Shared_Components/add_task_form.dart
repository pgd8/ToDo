// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/Shared_Components/field_label.dart';

class AddTaskForm extends StatefulWidget {
  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const Text(
            'Add New Task',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: double.infinity,
          margin:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: TextFormField(
            style: const TextStyle(fontSize: 12, color: Colors.black),
            decoration: InputDecoration(
                isDense: true,
                label: FieldLabel('Task Title'),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        ),
        Container(
          width: double.infinity,
          margin:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: TextFormField(
            style: const TextStyle(fontSize: 12, color: Colors.black),
            decoration: InputDecoration(
                isDense: true,
                label: FieldLabel('Task Description'),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 3, left: 5),
          alignment: Alignment.centerLeft,
          child: const Text(
            'select date',
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 3, left: 5, bottom: 5),
          child: const Text(
            'select date',
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Add Task',
                style: TextStyle(
                   color: Colors.white),
              )),
        ),
      ],
    );
  }
}
