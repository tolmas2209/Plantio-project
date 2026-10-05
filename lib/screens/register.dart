import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantio/gen/assets.gen.dart';
import 'package:plantio/main.dart';
import 'package:plantio/screens/plantiobottombar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool show = true;
  bool show1 = true;
  bool agree = false;
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 40, top: 140, right: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "Register on ",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
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
                    SizedBox(height: 10),
                    Text(
                      "Create an Aepod account, We can't wait to have you.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 16, right: 10),
                      child: SvgPicture.asset(
                        Assets.icons.profile,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    labelText: "Name",
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
                    if (value == null || value.trim().isEmpty) {
                      return "Ma'lumot kiriting!";
                    }
                    if (value.trim().length < 3) {
                      return "Kamida 3 ta belgi bo'lsin";
                    }
                    return null;
                  },
                ),
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixText: "+998 ",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 16, right: 10),
                      child: SvgPicture.asset(
                        Assets.icons.mobile,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    labelText: "Phone",
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
                    if (value == null || value.trim().isEmpty) {
                      return "Raqam kiriting!";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: passwordController,
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
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Center(
                          widthFactor: 1,
                          child: Text(
                            show ? "Show" : "Hide",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: primary,
                            ),
                          ),
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
                TextFormField(
                  obscureText: show1,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Parolni qayta kiriting!";
                    }
                    if (value != passwordController.text) {
                      return "Parollar mos emas";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 16, right: 10),
                      child: SvgPicture.asset(
                        Assets.icons.key,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    labelText: "Repeat Password",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: primary,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          show1 = !show1;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Center(
                          widthFactor: 1,
                          child: Text(
                            show1 ? "Show" : "Hide",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
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
                    Expanded(
                      child: Text(
                        "I Agree to the term and condition",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => Plantiobottombar()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 115,
                      vertical: 15,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: primary,
                    ),
                    child: Text(
                      "REGISTER",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
