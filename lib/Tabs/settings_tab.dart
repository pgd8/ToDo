// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/Tabs/Settings_Tab_Components/language_sheet.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text("Change Language"),
        TextButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return LanguageSheet();
              },
            );
          },
          child: Text("choose"),
        ),
      ],
    );
  }
}
