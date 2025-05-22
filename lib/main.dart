import 'package:flutter/material.dart';
import 'package:needburger/home_screen/needburger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Needburger(),
    );
  }
}