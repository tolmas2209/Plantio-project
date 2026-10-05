import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantio/gen/assets.gen.dart';
import 'package:plantio/main.dart';
import 'package:plantio/screens/login.dart';
import 'package:plantio/screens/register.dart';

class Stl1 extends StatelessWidget {
  const Stl1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background1.png",
            fit: .cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [
                  Color(0xff304B0D).withValues(alpha: 0.2),
                  Color(0xff152B0A),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80, left: 50, bottom: 180),
                  child: FadeInDown(
                    duration: Duration(milliseconds: 1500),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.icons.greenleaf),
                        Text(
                          "Plantio",
                          style: TextStyle(fontSize: 40, color: green),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: .start,
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.4,
                        child: FadeInLeft(
                          duration: Duration(milliseconds: 1500),
                          child: Text(
                            "Welcome To Plantio",
                            style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: .w500,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                      FadeInLeft(
                        duration: Duration(milliseconds: 2000),
                        child: Text(
                          "Feel Fresh a with plant Worlds.\nit will enhance your living space!",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: .w400,
                            color: white,
                          ),
                        ),
                      ),
                      SizedBox(),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        ),
                        child: FadeInUpBig(
                          duration: Duration(milliseconds: 1500),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 110,
                              vertical: 15,
                            ),
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(color: white),
                            ),
                            child: Text(
                              "Register".toUpperCase(),
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        ),
                        child: FadeInUp(
                          duration: Duration(milliseconds: 1500),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 125,
                              vertical: 15,
                            ),
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: white,
                            ),
                            child: Text(
                              "Login".toUpperCase(),
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
