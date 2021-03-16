import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soe/constants.dart';
import 'package:soe/screens/login.dart';

import '../components.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlue,
        title: Text("Software Development Project"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kBlue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(200.0),
                  bottomLeft: Radius.circular(70.0),
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(70),
                ),
              ),
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset("assets/svg/ellipse_top_pink.svg"),
                  ),
                  Positioned(
                    child:
                        SvgPicture.asset("assets/svg/ellipse_bottom_pink.svg"),
                    bottom: 0,
                    right: 0,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome to",
                          style: kWelcomeText,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Smart Toilet Management System",
                          style: kWelcomeText,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RoundedButton(
              buttonColor: kBlue,
              buttonTitle: 'Log In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
