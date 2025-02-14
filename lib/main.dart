import 'package:flutter/material.dart';
import 'package:secondproject/calculatorscreen.dart';
import 'package:secondproject/counterappscreen.dart';
import 'package:secondproject/inputcalculatorscreen.dart';
import 'package:secondproject/signupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counterappscreen()
    );
  }
}
