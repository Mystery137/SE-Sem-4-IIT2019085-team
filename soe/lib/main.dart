import 'package:flutter/material.dart';
import 'package:soe/screens/home.dart';
import 'package:soe/screens/home2.dart';
import 'package:soe/screens/report.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Report(),
    );
  }
}
