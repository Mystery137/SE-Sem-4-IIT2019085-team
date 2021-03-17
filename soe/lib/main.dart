import 'package:flutter/material.dart';
import 'package:soe/screens/home.dart';
import 'package:soe/screens/home2.dart';
import 'package:soe/screens/login.dart';
import 'package:soe/screens/report.dart';
import 'package:soe/screens/schedule.dart';
import 'package:soe/screens/sensor_data.dart';
import 'package:soe/screens/staff_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
