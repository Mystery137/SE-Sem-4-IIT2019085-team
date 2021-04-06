import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soe/shared/constants.dart';

class Staff_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kBlue,
          title: Text(
            'Staff Data',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: kBlue,
        body: SafeArea(
          child: Stack(
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
              Positioned(
                child: SvgPicture.asset("assets/svg/ellipse_bottom_pink.svg"),
                bottom: 0,
                right: 0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/images/myimg.jpg'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Aniket Jaiswal",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "STAFF MEMBER",
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 2.5,
                      fontSize: 20.0,
                      color: kPinkColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: kPinkColor,
                      ),
                      title: Text(
                        "+91 6393842272",
                        style: TextStyle(color: kPinkColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: kPinkColor,
                      ),
                      title: Text(
                        "aniketjaiswal255@gmail.com",
                        style: TextStyle(color: kPinkColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
