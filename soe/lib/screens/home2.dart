import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soe/constants.dart';

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
                        print('Drawer tap');
                      },
                    ),
                    Container(
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
              Container(
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
