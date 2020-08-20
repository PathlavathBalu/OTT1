import 'dart:math';

import 'package:OTT1/Home/home.dart';
import 'package:flutter/material.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
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
        child: SingleChildScrollView(
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
                  'Verify your number',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: "Roboto6",
                      letterSpacing: sqrt1_2,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'We have sent one time verification code to your',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Roboto",
                    letterSpacing: sqrt1_2,
                  ),
                ),
              ),
              SizedBox(height: 3),
              Center(
                child: Text(
                  'mobile +919876543210',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Roboto",
                    letterSpacing: sqrt1_2,
                  ),
                ),
              ),
              SizedBox(height: 18),
              Center(
                child: Text(
                  'Waiting for OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Roboto",
                    letterSpacing: sqrt1_2,
                  ),
                ),
              ),
              SizedBox(height: 3),
              Center(
                child: Text(
                  '01:57',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Roboto",
                    letterSpacing: sqrt1_2,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          // border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          // border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          // border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          // border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          // border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          // border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                    fontFamily: "Roboto",
                    letterSpacing: sqrt1_2,
                  ),
                ),
              ),
              SizedBox(height: 38),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
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
                        'Sign up',
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
                // onTap: () {
                //   Navigator.of(context).push(new MaterialPageRoute(
                //     builder: (BuildContext context) => new Mobile(),
                //   ));
                // },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
