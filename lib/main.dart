// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_import, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/Screens/WelcomeScreen/welcome.dart';
import 'package:app/Screens/SignUpScreen/signup.dart';
import 'package:app/Screens/SignUpScreen/signupsuccess.dart';
import 'package:app/Screens/SignInScreen/signin.dart';
import 'package:app/Screens/SignInScreen/signinsuccess.dart';
import 'package:app/Screens/ProfileScreen/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercedes',
      theme: ThemeData(
        fontFamily: "F"
      ),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}