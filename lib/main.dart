import 'package:flutter/material.dart';

import 'package:valid_home/view/login_screen/login_screen.dart';
import 'package:valid_home/view/reg_screen/reg_screen.dart';


String? userEmail="";
String? userPass="";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: LoginScreen(),
    );
  }
}

      