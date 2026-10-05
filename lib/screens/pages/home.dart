import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantio/gen/assets.gen.dart';
import 'package:plantio/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: .end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(30),
                    child: Image.asset(
                      Assets.images.avatar.path,
                      fit: .cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: "New on ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: .w700,
                    color: black,
                  ),
                  children: [
                    TextSpan(
                      text: "Plantio",
                      style: TextStyle(color: primary),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: SvgPicture.asset(
                          Assets.icons.garden,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Text(
                        "My Garden",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: SvgPicture.asset(
                          Assets.icons.plants,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Text(
                        "My Plants",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: SizedBox(
                  height: 270,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(Assets.images.garden.path),
                      ),
                      Container(
                        width: double.infinity,
                        height: 350,
                        color: Colors.black.withValues(alpha: .18),
                      ),
                      Positioned(
                        left: 30,
                        bottom: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Create plans\nwith Gardening App',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    spacing: 10,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image.asset(Assets.images.kaktus.path),
                          ),
                          Positioned(
                            top: 10,
                            left: 110,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: 10,
                                left: 10,
                                top: 5,
                              ),
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: primary,
                              ),
                              child: Text(
                                "New",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: .w400,
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Cactus",
                        style: TextStyle(fontSize: 18, fontWeight: .w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    spacing: 10,
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Image.asset(Assets.images.redkaktus.path),
                      ),
                      Text(
                        "Cactus Red",
                        style: TextStyle(fontSize: 18, fontWeight: .w500),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    spacing: 10,
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Image.asset(Assets.images.qorashagzoda.path),
                      ),
                      Text(
                        "Black Prince",
                        style: TextStyle(fontSize: 18, fontWeight: .w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    spacing: 10,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image.asset(Assets.images.barg.path),
                          ),
                          Positioned(
                            top: 10,
                            left: 110,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: 10,
                                left: 10,
                                top: 5,
                              ),
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: primary,
                              ),
                              child: Text(
                                "New",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: .w400,
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Ivy",
                        style: TextStyle(fontSize: 18, fontWeight: .w500),
                      ),
                    ],
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
