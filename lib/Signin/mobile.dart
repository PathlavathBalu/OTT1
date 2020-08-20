import 'dart:math';

import 'package:OTT1/Signin/otp.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffefefd),
              Color(0xff7563b9),
              Color(0xff7563b9),
              Color(0xff7563b9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 22,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'Enter email or mobile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "Roboto6",
                    letterSpacing: sqrt1_2,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter email or mobile',
                  // border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 13,
                      color: Colors.white60,
                      fontFamily: "Roboto"),
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Please enter valid Email ID',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: "Roboto",
                  letterSpacing: sqrt1_2,
                ),
              ),
            ),
            SizedBox(height: 28),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyOtp()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 17,
                        fontFamily: "Roboto6",
                        letterSpacing: sqrt1_2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
