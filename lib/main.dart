import 'package:flutter/material.dart';
import 'package:my_tsel_clone/screens/bottom_nav_bar.dart';
import 'package:my_tsel_clone/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telkomsel App Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: red2Color)),
      home: BottomNavBar(),
    );
  }
}