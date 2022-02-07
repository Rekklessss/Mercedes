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


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: SafeArea(
          bottom: false,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children:  [
              SizedBox(
                height: 25,
              ),
              Heading("Sign In"),
              SizedBox(
                height: 25,
              ),
              EmailInput(),
              PasswordInput(),
               Padding(
                  padding: EdgeInsets.only(top: 0.0, left: 15.0),
                  child: TextButton(
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF03BFB5)),
                    ),
                    onPressed: null,
                  )),
              SignInButton(),
              
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Or login with?",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                ),
              ),
              SocialButtons(),

              
            ],
          )),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white.withOpacity(.9)),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
              onChanged: (value) {
                //Do something wi
              },
              style: const TextStyle(fontSize: 14, color: Colors.white),
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: const Color(0xff161C22),
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white.withOpacity(.9)),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
              obscureText: true,
              onChanged: (value) {
              },
              style: const TextStyle(fontSize: 14, color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff161C22),
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
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
          child: const Text("Sign In", style: TextStyle(color: Color(0xff1b232A), fontSize: 15, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).push(new SignInSuccessPageRoute());
          },
        )
        );
  }
}

class SignInSuccessPageRoute extends CupertinoPageRoute {
  SignInSuccessPageRoute()
      : super(builder: (BuildContext context) => new SignInSuccess());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new SignInSuccess());
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [FacebookBtn(), GoogleBtn()],
      ),
    );
  }
}

class GoogleBtn extends StatelessWidget {
  const GoogleBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: MediaQuery.of(context).size.width / 2.5,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Google",
                  style: TextStyle(color: Color(0xff1b232A), fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          onPressed: () {
            //Navigate Home Here

            //or move screens
          },
        ));
  }
}

class FacebookBtn extends StatelessWidget {
  const FacebookBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: MediaQuery.of(context).size.width / 2.5,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Ffacebook%20(2).png?alt=media&token=9c275bf0-2bf7-498a-9405-9ae99df8d8f2",
                width: 17,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Facebook",
                  style: TextStyle(color: Color(0xff1b232A), fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          onPressed: () {
            //Navigate Home Here

            //or move screens
          },
        ));
  }
}
