import 'package:flutter/material.dart';
import 'package:travelhotel/screens/home%20screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
