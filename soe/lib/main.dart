import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soe/models/currentUser.dart';
import 'package:soe/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:soe/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CurrentUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
