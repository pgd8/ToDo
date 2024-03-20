// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/Shared_Components/field_label.dart';

class AddTaskForm extends StatefulWidget {
  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  var formKey = GlobalKey<FormState>();
  var taskTitle = TextEditingController();
  var taskDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: const Text(
                'Add New Task',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value == '') {
                    return "Pleas enter the task title";
                  }
                },
                style: const TextStyle(fontSize: 12, color: Colors.black),
                decoration: InputDecoration(
                    isDense: true,
                    errorStyle: TextStyle(fontSize: 10),
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
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value == '') {
                    return "Pleas enter the task description";
                  }
                },
                style: const TextStyle(fontSize: 12, color: Colors.black),
                decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 10),
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
                style: TextStyle(fontSize: 10),
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
                  onPressed: () {
                    if (formKey.currentState!.validate()) {

                    }
                  },
                  child: const Text(
                    'Add Task',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
