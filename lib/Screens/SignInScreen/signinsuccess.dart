// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_import, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/Screens/WelcomeScreen/welcome.dart';
import 'package:app/Screens/SignUpScreen/signup.dart';
import 'package:app/Screens/SignUpScreen/signupsuccess.dart';
import 'package:app/Screens/SignInScreen/signin.dart';
import 'package:app/Screens/SignInScreen/signinsuccess.dart';
import 'package:app/Screens/ProfileScreen/profile.dart';

class SignInSuccess extends StatelessWidget {
  const SignInSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        Image.network(
            "https://logodownload.org/wp-content/uploads/2014/04/mercedes-benz-logo-1-1.png", width: 250, height: 250,),
        const SizedBox(
          height: 15,
        ),
        const Heading("You are now logged in!"),
        const SizedBox(
          height: 25,
        ),
        const ProfileBtn(),
      ])),
    );
  }
}
class Heading extends StatelessWidget {
  final String text;
  const Heading(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ProfileBtn extends StatelessWidget {
  const ProfileBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF03BFB5),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF03BFB5).withOpacity(.15),
                offset: const Offset(0, 10),
                blurRadius: 20,
                spreadRadius: 0,
              )
            ]),
        child: TextButton(
          child: const Text("Profile", style: TextStyle(color: Color(0xff1b232A), fontSize: 15, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).push(new ProfilePageRouteViaSignIn());

          },
        ));
  }
}

class ProfilePageRouteViaSignIn extends CupertinoPageRoute {
  ProfilePageRouteViaSignIn()
      : super(builder: (BuildContext context) => new Profile());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new Profile());
  }
}
