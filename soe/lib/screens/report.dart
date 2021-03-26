import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:soe/shared/constants.dart';
import '../components.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  final _messageTextController = TextEditingController();
  List<String> reports = [
    "All sensors are working properly.",
    "Some of sensors needs servicing.",
    "Hello I am Aniket Jaiswal.\nSecond year B.Tech.\nTech Enthu...\nCompetiti...\nYep\nIt's me"
  ];
  String currentreport;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: kBlue,
                        shape: BoxShape.circle,
                      ),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Past Reports   ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Pacifico',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .35,
                      child: ListView.builder(
                        itemCount: reports.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: kBlue),
                              child: ListView(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: reports[index],
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              height: 150,
                              width: 150,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: _messageTextController,
                      decoration: InputDecoration(
                        fillColor: kBlue,
                        hoverColor: kBlue,
                        focusColor: kBlue,
                        labelText: "Your current report...",
                        hintText: "Type here...",
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kBlue, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                      maxLines: 7,
                      onChanged: (value) {
                        currentreport = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RoundedButton(
                      buttonColor: kBlueColor,
                      buttonTitle: 'Send Report',
                      onPressed: () {
                        setState(
                          () {
                            if (currentreport != null) {
                              setState(() {
                                _messageTextController.clear();
                                reports.add(currentreport);
                                currentreport = null;
                                showAlertDialog(context);
                              });
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
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
      "\nMessage Info",
      style: TextStyle(color: kBlue),
      textAlign: TextAlign.center,
    ),
    content: Text(
      "Sent successfully",
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
