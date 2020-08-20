import 'dart:math';
import 'package:OTT1/Signin/mobile.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   //  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      //  backgroundColor: Color(0xFFF5F5F5),
      //   drawer: NavDrawer(),
      //   key: _scaffoldKey,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // width: 150.0,
                // height: 60.0,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                  image: AssetImage('images/virat2.jpg'),
                  fit: BoxFit.fill,
                )),
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                             colors: [
                            Colors.black12.withOpacity(0.8),
                            Colors.black12.withOpacity(0.8)
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: 260,
                            ),
                            InkWell(
                              child: Icon(
                                Icons.clear,
                                size: 22,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Roboto6",
                              letterSpacing: sqrt1_2,
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 52.0),
                            child: Text(
                              'Viu anytime anywhere, Save your favourite dramas, movies to watch later',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                fontFamily: "Roboto",
                                letterSpacing: sqrt1_2,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0Xff4167b2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Image.asset(
                                        'images/Facebook_Logo.png',
                                        height: 25,
                                        width: 25,
                                      ),
                                      Text(
                                        'Continue with Facebook',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: "Roboto6",
                                          letterSpacing: sqrt1_2,
                                        ),
                                      ),
                                      Container(width: 80),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Image.asset(
                                        'images/google.png',
                                        height: 23,
                                        width: 23,
                                      ),
                                      Text(
                                        'Continue with Google',
                                        style: TextStyle(
                                          color: Color(0xff676767),
                                          fontSize: 14,
                                          fontFamily: "Roboto6",
                                          letterSpacing: sqrt1_2,
                                        ),
                                      ),
                                      Container(width: 90),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Image.asset(
                                        'images/email1.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      Text(
                                        'Continue with Email or Mobile',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontFamily: "Roboto6",
                                          letterSpacing: sqrt1_2,
                                        ),
                                      ),
                                      Container(width: 44),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new Mobile(),
                              ));
                            },
                          ),
                          SizedBox(height: 15),
                          Text(
                            'By Continuing you aagree to Viu Terms and ondition and Privacy Policy',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 8,
                              fontFamily: "Roboto",
                              letterSpacing: sqrt1_2,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
