// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/My_App/my_theme.dart';
import 'package:todo/Providers/my_provider.dart';

class ThemeModeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("mode"),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: provider.mode == ThemeMode.light
                        ? Colors.blue.shade700
                        : Colors.white),
                onPressed: () {
                  provider.changeMode(ThemeMode.light);
                },
                child: Text(
                  "Light",
                  style: TextStyle(
                      color: provider.mode == ThemeMode.light
                          ? Colors.white
                          : Colors.blue.shade700),
                )),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: provider.mode == ThemeMode.dark
                        ? Colors.blue.shade700
                        : Colors.white),
                onPressed: () {
                  provider.changeMode(ThemeMode.dark);
                },
                child: Text(
                  "Dark",
                  style: TextStyle(
                      color: provider.mode == ThemeMode.dark
                          ? Colors.white
                          : Colors.blue.shade700),
                )),
          ),
        ],
      ),
    );
  }
}
