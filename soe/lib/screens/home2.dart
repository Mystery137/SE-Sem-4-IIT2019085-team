import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soe/constants.dart';
import 'package:soe/screens/home.dart';
import 'package:soe/screens/report.dart';
import 'package:soe/screens/schedule.dart';
import 'package:soe/screens/sensor_data.dart';
import 'package:soe/screens/staff_data.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset(
                        'assets/svg/drawer_icon.svg',
                        height: 20,
                        width: 20,
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                            (route) => false);
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Staff_data(),
                          ),
                        );
                      },
                      child: Container(
                        height: 59,
                        width: 59,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_image.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello!',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Aniket Jaiswal',
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sensor_data(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: kBlue,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child:
                            SvgPicture.asset("assets/svg/ellipse_top_pink.svg"),
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                            "assets/svg/ellipse_bottom_pink.svg"),
                        bottom: 0,
                        right: 0,
                      ),
                      Positioned(
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/sensor_logo.png'),
                            ),
                          ),
                        ),
                        right: 25,
                        top: 25,
                      ),
                      Positioned(
                        bottom: 90,
                        left: 20,
                        child: Text(
                          "Access",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: kWhiteColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "Sensor Data",
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        bottom: 40,
                        left: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Schedule(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: kBlue,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child:
                            SvgPicture.asset("assets/svg/ellipse_top_pink.svg"),
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                            "assets/svg/ellipse_bottom_pink.svg"),
                        bottom: 0,
                        right: 0,
                      ),
                      Positioned(
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/schedule_logo.png'),
                            ),
                          ),
                        ),
                        right: 25,
                        top: 25,
                      ),
                      Positioned(
                        bottom: 90,
                        left: 20,
                        child: Text(
                          "Access",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: kWhiteColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "Schedule Data",
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        bottom: 40,
                        left: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Report(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: kBlue,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child:
                            SvgPicture.asset("assets/svg/ellipse_top_pink.svg"),
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                            "assets/svg/ellipse_bottom_pink.svg"),
                        bottom: 0,
                        right: 0,
                      ),
                      Positioned(
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/report_logo.png'),
                            ),
                          ),
                        ),
                        right: 25,
                        top: 25,
                      ),
                      Positioned(
                        bottom: 90,
                        left: 20,
                        child: Text(
                          "Send",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: kWhiteColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "Report",
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        bottom: 40,
                        left: 20,
                      ),
                    ],
                  ),
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
