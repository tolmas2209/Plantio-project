import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantio/gen/assets.gen.dart';
import 'package:plantio/main.dart';
import 'package:plantio/screens/plantiobottombar.dart';
import 'package:plantio/screens/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool agree = false;
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 40, top: 140),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  spacing: 20,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.greenleaf),
                        Text(
                          " Plantio",
                          style: TextStyle(fontSize: 40, color: green),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Register on ",
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
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Column(
                        spacing: 6,
                        children: [
                          Text(
                            "Create an Aepod account, We can't wait to have you.",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 16, right: 10),
                                child: SvgPicture.asset(
                                  Assets.icons.sms,
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: primary,
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email kiriting!";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            obscureText: show,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 16, right: 10),
                                child: SvgPicture.asset(
                                  Assets.icons.key,
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: primary,
                              ),
                              suffix: GestureDetector(
                                onTap: () => setState(() {
                                  show = !show;
                                }),
                                child: Text(
                                  show ? "Show" : "Hide",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: primary,
                                  ),
                                ),
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Parol kiriting!";
                              }
                              if (value.length < 6) {
                                return "Parol kamida 6 ta belgidan iborat bo'lsin";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: agree,
                      onChanged: (bool? value) {
                        setState(() {
                          agree = value ?? false;
                        });
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          "Remember Me",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: grey,
                          ),
                        ),
                        SizedBox(width: 100),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: primary),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    if (!agree) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Iltimos, shartlarga rozilik bildiring",
                          ),
                        ),
                      );
                      return;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Plantiobottombar(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 140,
                      vertical: 15,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: primary,
                    ),
                    child: Text(
                      "Login".toUpperCase(),
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: .w500,
                        color: grey,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: primary,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
