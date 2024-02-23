import 'package:flutter/material.dart';
import 'package:todo/Screens/home_screen.dart';
import 'package:todo/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      theme: ThemeData(
          primaryColor: Colors.blue.shade700,
          scaffoldBackgroundColor: const Color(0xffDFECDB),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue.shade700,
              centerTitle: true,
              titleTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5)),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.transparent,
              elevation: 0,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey),
          bottomAppBarTheme: BottomAppBarTheme(
            shape: CircularNotchedRectangle(),
            color: Colors.white,
            padding: const EdgeInsets.all(0),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.blue.shade700,
              shape: const CircleBorder(
                  side: BorderSide(color: Colors.white, width: 2))),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade700,
          )
        )
      ),
      home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }
}
