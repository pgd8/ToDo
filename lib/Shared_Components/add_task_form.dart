// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/Shared_Components/field_label.dart';

class AddTaskForm extends StatefulWidget {
  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  var formKey = GlobalKey<FormState>();
  var taskTitle = TextEditingController();
  var taskDescription = TextEditingController();
  var selectedDate = DateTime.now;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Form(
      key: formKey,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: 0.01.sw, vertical: 0.02.sh),
              child: const Text(
                'Add New Task',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.02.sh),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value == '') {
                    return "Pleas enter the task title";
                  }
                },
                style: TextStyle(fontSize: 12.sp, color: Colors.black),
                decoration: InputDecoration(
                    isDense: true,
                    errorStyle: TextStyle(fontSize: 11.sp),
                    label: FieldLabel('Task Title'),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    )),
              ),
            ),
            Container(
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.02.sh),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value == '') {
                    return "Pleas enter the task description";
                  }
                },
                style: TextStyle(fontSize: 12.sp, color: Colors.black),
                decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 10.sp),
                    isDense: true,
                    label: FieldLabel('Task Description'),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.01.sh, left: 0.03.sw),
              alignment: Alignment.centerLeft,
              child: Text(
                'select date',
                style: TextStyle(fontSize: 10.sp),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 0.01.sh, left: 0.02.sw, bottom: 0.01.sh),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'select date',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 0.015.sh),
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
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
