import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:math';

import 'Home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.red.withOpacity(0.9),
        // decoration: BoxDecoration(
        //     // borderRadius: BorderRadius.circular(50),
        //     //color: Color(0xFFF43D7F),
        //     gradient: LinearGradient(
        //         begin: Alignment.topRight,
        //         end: Alignment.bottomLeft,
        //         colors: [Color(0XFFF9D25B), Color(0XFFF77622)])),
        child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage:  AssetImage("images/pelli.jpg"),
            ),
            SizedBox(height: 30,),
            Text(
                'TELUGU',
                style: TextStyle(
                  color: Colors.white,
                   fontFamily: 'Roboto6',
                   fontWeight: FontWeight.bold,
                     letterSpacing:sqrt(20),
                   fontSize: 13,
                ),
              ),
               SizedBox(height: 10,),
              Text(
                "Hang on! We're putting",
                style: TextStyle(
                  color: Colors.white,
                   fontFamily: 'Roboto',
                   fontWeight: FontWeight.w400,
                     letterSpacing:sqrt(1),
                   fontSize: 16,
                ),
              ),
              Text(
                "together some cool videos",
                style: TextStyle(
                  color: Colors.white,
                   fontFamily: 'Roboto',
                   fontWeight: FontWeight.w400,
                     letterSpacing:sqrt(1),
                   fontSize: 16,
                ),
              ),
               Text(
                "for you",
                style: TextStyle(
                  color: Colors.white,
                   fontFamily: 'Roboto',
                   fontWeight: FontWeight.w400,
                    letterSpacing:sqrt(1),
                   fontSize: 16,
                ),
               ),
          ],
        ),
      ),
    );
  }
}
