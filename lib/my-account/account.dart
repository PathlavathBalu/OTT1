import 'dart:math';

import 'package:OTT1/Signin/signin.dart';
import 'package:OTT1/my-account/promocode.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:OTT1/premium/premium.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        drawer: NavDrawer(),
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xff549cda),
          title: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 1),
              Text(
                "My Account",
                style: TextStyle(
                    fontFamily: 'Roboto6', fontSize: 17, color: Colors.white
                    //fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
          leading: IconButton(
            icon: Image.asset(
              'images/menu.png',
              width: 20,
              height: 20,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Color(0xff549cda),
                width: MediaQuery.of(context).size.width,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  transform: Matrix4.translationValues(0.0, -55.0, 0.0),
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(13.0),
                      ),
                    ),
                    child: Container(
                     height:  MediaQuery.of(context).size.height/1.56,
                      // transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -50.0, 0.0),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff6a727c),
                              radius: 50,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -45.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "MEMBERSHIP",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: Color(0xff919191),
                                    letterSpacing: sqrt1_2,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Basic",
                                  style: TextStyle(
                                    fontFamily: 'Roboto6',
                                    fontSize: 20,
                                    color: Color(0xff545454),
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: sqrt1_2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -35.0, 0.0),
                            child: Divider(
                              color: Colors.grey,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -23.0, 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "PREMIMUM",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        color: Color(0xff919191),
                                        letterSpacing: sqrt1_2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "0 Days",
                                      style: TextStyle(
                                        fontFamily: 'Roboto6',
                                        fontSize: 20,
                                        color: Color(0xff545454),
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: sqrt1_2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 40),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "PACKAGE",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        color: Color(0xff919191),
                                        letterSpacing: sqrt1_2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "FREE",
                                      style: TextStyle(
                                        fontFamily: 'Roboto6',
                                        fontSize: 20,
                                        color: Color(0xff545454),
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: sqrt1_2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff6a727c),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(13),
                                  bottomRight: Radius.circular(13)),
                            ),
                           height:  MediaQuery.of(context).size.height/3.38,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Full access to all basic and premium",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "videos. No ads.Cancel anytime",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 60),
                                  Center(
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Premium()),
                                        );
                                      },
                                      child: Text(
                                        "GO PREMIUM",
                                        style: TextStyle(
                                          fontFamily: 'Roboto6',
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: sqrt1_2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Have a PromoCode",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: Color(0xff919191),
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -25.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PromoCode()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(13.0),
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                       height:  MediaQuery.of(context).size.height/6.5,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 15, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 27,
                              ),
                              Text(
                                "Enter Code",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: Color(0xff545454),
                                  //fontStyle: FontStyle.italic,
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -3.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: Color(0xff919191),
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(13.0),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height:  MediaQuery.of(context).size.height/6.5,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15, right: 15, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "MOBILE",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: Color(0xff545454),
                                //fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "919876543210",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                color: Colors.black,
                                //fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              FlatButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(13.0),
                                ),
                              ),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      Text(
                                        'Are you sure?',
                                        //textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff545454),
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto6",
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        'You will be signed out of Viu on this device',
                                        //  textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 13.0,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      SizedBox(height: 40),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 22.0),
                                        child: Container(
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Color(0xff545454),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(24.0)),
                                          ),
                                          child: FlatButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignIn()),
                                              );
                                            },
                                            child: Center(
                                              child: Text(
                                                'Sign Out',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: "Roboto6",
                                                  letterSpacing: sqrt1_2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 22.0),
                                        child: Container(
                                          height: 43,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff4f4f4),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(24.0)),
                                          ),
                                          child: InkWell(
                                            child: Center(
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: "Roboto6",
                                                  letterSpacing: sqrt1_2,
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Container(
                    height: 43,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff6a727c),
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Roboto6",
                          letterSpacing: sqrt1_2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                          'Question? Contact Us',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Roboto6",
                            letterSpacing: sqrt1_2,
                          ),
                        ),
              ),
               SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
