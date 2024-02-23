import 'package:flutter/material.dart';
import 'package:todo/Screens/home_screen.dart';
import 'package:todo/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context)=> SplashScreen(),
      HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }
}

