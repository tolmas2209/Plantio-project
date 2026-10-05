import 'package:flutter/material.dart';
import 'package:plantio/screens/stl.dart';

void main() {
  runApp(const MainApp());
}

Color black = Color(0xff000000);
Color grey = Color(0xff969C96);
Color green = Color(0xff25570B);
Color white = Colors.white;
Color primary = Color(0xff5B8E55);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Plantio",
      theme: ThemeData(colorScheme: ColorScheme.light(primary: primary)),
      home: Stl(),
    );
  }
}
