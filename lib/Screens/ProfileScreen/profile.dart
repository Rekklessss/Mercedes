// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_import, unnecessary_new, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/Screens/WelcomeScreen/welcome.dart';
import 'package:app/Screens/SignUpScreen/signup.dart';
import 'package:app/Screens/SignUpScreen/signupsuccess.dart';
import 'package:app/Screens/SignInScreen/signin.dart';
import 'package:app/Screens/SignInScreen/signinsuccess.dart';
import 'package:app/Screens/ProfileScreen/profile.dart';

const primaryColor = Color(0xFF03BFB5);
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: ListView(
          children: <Widget>[
            SizedBox(height: 15.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                      tag: "profile",
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                        child: Container(
                            height: 190.0,
                            width: 190.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(102.5),
                                color: primaryColor.withOpacity(0.05)),
                        )),
                      
                    Container(
                        child: Container(
                            height: 170.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(102.5),
                                gradient: RadialGradient(stops:[0.01,0.5],colors: [Colors.white,primaryColor.withOpacity(0.1)]),
                        )),
                      ),
                    Container(
                        child: Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(102.5),
                                color: primaryColor
                                    .withOpacity(0.4))),
                      ),
                      Container(
                        child: Container(
                            height: 132.0,
                            width: 132.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(102.5),
                                color: primaryColor
                                    .withOpacity(0.5))),
                      ),
                    
                    
                      Container(
                        child: Container(
                          height: 125.0,
                          width: 125.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(62.5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://i.postimg.cc/tg2gG7YT/thedivyanshupabia-04012022-0001.png"))),
                        ),
                      ),
                    
                  ],
                ),),
                SizedBox(height: 25.0),
                Text(
                  'Divyanshu Pabia',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF03BFB5) ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Slayer',
                  style: TextStyle(color: Colors.grey,
                  fontSize: 15),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '8147',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF03BFB5)),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Wins',
                            style: TextStyle(
                            color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '314507',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF03BFB5)
                                ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Kills',
                            style: TextStyle(
                                 color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '150',
                            style: TextStyle(
                                color: Color(0xFF03BFB5),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "Level",
                            style: TextStyle(
                                 color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                

                          SizedBox(height: 5.0),
                          Text(
                            "Achievements",
                            style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 25,
                                 fontWeight: FontWeight.bold
                                 ),),
                          SizedBox(height: 25.0),

               InfoDetailListTile(
                    name:"World Championship 21'", value:"#1", tooltip: "International", date: "11/12/2021"),
               InfoDetailListTile(
                    name:"World Championship 20'", value:"#7", tooltip:"International", date: "02/12/2020"),
               InfoDetailListTile(
                    name:"Loco Cup 21'",value: "#2", tooltip: "Regional", date: "21/03/2021"),
               InfoDetailListTile(
                    name:"Mobile Mayhem 21'", value:"#2", tooltip: "Regional",date: "09/06/2021"),
                  
              ],
            )
          ],
        ),
    );
  }
}

class InfoDetailListTile extends StatelessWidget {
  final String name;
   final String value;
    final String tooltip;
     final String date;

  const InfoDetailListTile({required this.name, required this.value, required this.tooltip, required this.date,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    
                    fontSize: 15.0),
              ),
              SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Text(
                    tooltip,
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        
                        fontSize: 11.0),
                  ),
                  SizedBox(width: 4.0),
                  Icon(
                    Icons.timer,
                    size: 4.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    date,
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        
                        fontSize: 11.0),
                  )
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                value,
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
 