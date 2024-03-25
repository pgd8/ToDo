// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Providers/my_provider.dart';

class LanguageSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        Text("Language"),
        ElevatedButton(
            onPressed: () {
              provider.changeLanguage("en");
            },
            child: Text("English")),
        ElevatedButton(
            onPressed: () {
              provider.changeLanguage("ar");
            },
            child: Text("Arabic")),
      ],
    );
  }
}
