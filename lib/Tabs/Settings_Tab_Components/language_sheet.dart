// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/My_App/my_theme.dart';
import 'package:todo/Providers/my_provider.dart';

class LanguageSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Language"),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: provider.languageCode == "en"
                        ? Colors.blue.shade700
                        : Colors.white),
                onPressed: () {
                  provider.changeLanguage("en");
                },
                child: Text(
                  "English",
                  style: TextStyle(
                      color: provider.languageCode == "en"
                          ? Colors.white
                          : Colors.blue.shade700),
                )),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: provider.languageCode == "ar"
                        ? Colors.blue.shade700
                        : Colors.white),
                onPressed: () {
                  provider.changeLanguage("ar");
                },
                child: Text(
                  "Arabic",
                  style: TextStyle(
                      color: provider.languageCode == "ar"
                          ? Colors.white
                          : Colors.blue.shade700),
                )),
          ),
        ],
      ),
    );
  }
}
