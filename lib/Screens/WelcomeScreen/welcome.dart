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


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0);

    return Scaffold(
        backgroundColor: Color(0xFF1B232A),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: contents.length,
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          contents[i].image,
                          width: MediaQuery.of(context).size.width / 1.75,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF03BFB5)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Text(contents[i].description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white38,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(context, index)),
              ),
              const Button()
            ],
          ),
        ));
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
        height: 10,
        width: 10,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: index == currentIndex
              ? const Color(0xFF03BFB5)
              : Color.fromARGB(255, 144, 138, 138),
        ));
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: 180,
        margin: const EdgeInsets.all(40),
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
          child: const Text("Get Started", style: TextStyle(color: Color(0xFF1B232A), fontSize: 15, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).push(new SignUpPageRoute());
          },
        )
        );
  }
}

class SignUpPageRoute extends CupertinoPageRoute {
  SignUpPageRoute()
      : super(builder: (BuildContext context) => new SignUp());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new SignUp());
  }
}

class Welcome {
  String image;
  String title;
  String description;
  Welcome(
      {this.image =
          "https://logodownload.org/wp-content/uploads/2014/04/mercedes-benz-logo-1-1.png",
      this.title = "Title",
      this.description =
          "Demo"});
}

List<Welcome> contents = [
  Welcome(
      image:
          "https://logodownload.org/wp-content/uploads/2014/04/mercedes-benz-logo-1-1.png",
      title: "Mercedes",
      description:
          "#WeLivePerformance"),

  Welcome(
      image:
          "https://revenantesports.com/assets/img/logo.png",
      title: "Revenant Esports",
      description:
          "#MakingMasters"),

   Welcome(
      image:
          "https://i.postimg.cc/NFFmv1dd/output-onlinepngtools-1.png",
      title: "Rekkles",
      description:
          "#TheKingInTheNorth"),
  
];