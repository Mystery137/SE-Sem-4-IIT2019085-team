import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:soe/screens/home2.dart';

import '../components.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  bool showSpin = false;
  // final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ModalProgressHUD(
          inAsyncCall: showSpin,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: kBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Flexible(
                    //   child: Hero(
                    //     tag: 'logo',
                    //     child: Container(
                    //       height: 200.0,
                    //       child: Image.asset('images/logo.png'),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 48.0,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: kLoginTextFeildDecoration.copyWith(
                        hintText: 'Enter your email',
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: kLoginTextFeildDecoration.copyWith(
                        hintText: 'Enter your password',
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    RoundedButton(
                      buttonColor: kBlueColor,
                      buttonTitle: 'Log In',
                      onPressed: () {
                        if (email == "abc@xyz" && password == "1234") {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Home2()),
                              (route) => false);
                        } else {
                          showAlertDialog(context);
                        }
                      },
                      // onPressed: () async {
                      //   setState(() {
                      //     showSpin = true;
                      //   });
                      //   try {
                      //     var user = await _auth.signInWithEmailAndPassword(
                      //         email: email, password: password);
                      //     if (user != null) {
                      //       SharedPreferences prefs =
                      //           await SharedPreferences.getInstance();
                      //       prefs.setString('email', email);
                      //       Navigator.pushNamedAndRemoveUntil(
                      //           context, ChatScreen.id, (route) => false);
                      //     } else {
                      //       showAlertDialog(context);
                      //     }
                      //     setState(() {
                      //       showSpin = false;
                      //     });
                      //   } catch (e) {
                      //     setState(() {
                      //       showSpin = false;
                      //     });
                      //     showAlertDialog(context);
                      //     print(e);
                      //   }
                      // },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text(
      "OK",
      textAlign: TextAlign.center,
      style: TextStyle(color: kBlue),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "\nIncorrect password/email",
      style: TextStyle(color: kBlue),
      textAlign: TextAlign.center,
    ),
    content: Text(
      "Re-enter password/email.",
      style: TextStyle(color: kBlue),
      textAlign: TextAlign.center,
    ),
    actions: [
      okButton,
    ],
    elevation: 24.0,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
