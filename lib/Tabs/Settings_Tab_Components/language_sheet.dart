// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LanguageSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Language"),
        ElevatedButton(
            onPressed: (){},
            child: Text("English")
        ),
        ElevatedButton(
            onPressed: (){},
            child: Text("Arabic")
        ),
      ],
    );
  }
}
