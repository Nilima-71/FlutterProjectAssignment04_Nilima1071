import 'package:flutter/material.dart';
//import 'package:project1_1071/Image_page.dart';
//import 'package:project1_1071/converter_page.dart';
import 'package:project1_1071/home_page.dart';
import 'package:project1_1071/log_in.dart';
import 'package:project1_1071/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(),
    );
  }
}
