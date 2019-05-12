import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Frenzy Chat",
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: HomeScreen(),
    );
  }
}
