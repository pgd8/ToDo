import 'package:flutter/material.dart';
import 'package:todo/Tabs/Settings_Tab_Components/language_sheet.dart';

class SettingsTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(context: context,
                builder:(context) {
              return LanguageSheet();
                },
            );
          },
          child: Text("Change Language"),
        ),
      ],
    );
  }

}