import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantio/gen/assets.gen.dart';
import 'package:plantio/main.dart';
import 'package:plantio/screens/stl1.dart';

class Stl extends StatelessWidget {
  const Stl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: .center,
        children: [
          Image.asset(
            "assets/images/background.png",
            fit: .cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            alignment: .center,
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [
                  Color(0xff5B8E55).withValues(alpha: 0.55),
                  Color(0xff152B0A).withValues(alpha: 0.71),
                ],
              ),
            ),
            child: InkWell(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Stl1()),
              ),
              child: FadeInUpBig(
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        SvgPicture.asset(Assets.icons.whiteleaf),
                        Text(
                          "Plantio",
                          style: TextStyle(fontSize: 40, color: white),
                        ),
                      ],
                    ),
                    Text(
                      "Gardening App",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: .w400,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
