import 'dart:math';

import 'package:OTT1/my-account/account.dart';
import 'package:OTT1/my-account/promocode.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';

class Premium extends StatefulWidget {
  @override
  _PremiumState createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xfff5f5f5),
      drawer: NavDrawer(),
      key: _scaffoldKey,
      backgroundColor: Color(0xff549cda),
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      //  height: 350,
                      color: Color(0xff549cda),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  transform:
                                      Matrix4.translationValues(-10.0, -16.0, .0),
                                  child: IconButton(
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
                                //SizedBox(width: 10),
                                Container(
                                  transform:
                                      Matrix4.translationValues(-18.0, -2.0, .0),
                                  child: Text(
                                    'Go Premium',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_2,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(width: 28),
                                Text(
                                  'Current plan: Basic',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_2,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  transform:
                                      Matrix4.translationValues(0.0, -5.0, .0),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff6a727c),
                                    radius: 12,
                                    child: InkWell(
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              new MyAccount(),
                                        ));
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(width: 80),
                                          Text(
                                            'PREMIUM',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontFamily: "Roboto",
                                            ),
                                          ),
                                          SizedBox(width: 17),
                                          Text(
                                            'BASIC',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontFamily: "Roboto"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Free Videos',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontFamily: "Roboto",
                                            ),
                                          ),
                                          SizedBox(width: 25),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10.0),
                                            child: Icon(
                                              Icons.radio_button_checked,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                          SizedBox(width: 45),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10.0),
                                            child: Icon(
                                              Icons.radio_button_checked,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Download',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontFamily: "Roboto",
                                            ),
                                          ),
                                          SizedBox(width: 37),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10.0),
                                            child: Icon(
                                              Icons.radio_button_checked,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Premium Videos',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontFamily: "Roboto",
                                            ),
                                          ),
                                          //  SizedBox(width:5),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10.0),
                                            child: Icon(
                                              Icons.radio_button_checked,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'No Ads',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontFamily: "Roboto",
                                            ),
                                          ),
                                          SizedBox(width: 53),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10.0),
                                            child: Icon(
                                              Icons.radio_button_checked,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 0.0, 0.0),
                                      width: 200.0,
                                      height: 230.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage('images/virat4.png'),
                                        fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                // mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -30.0, 0.0),
                                      //width: 200.0,
                                     // height: 200.0,
                                     height:  MediaQuery.of(context).size.height/2.45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        // border: Border.all(color: Color(0XFFF5F5F5)),
                                      ),
                                      child: ListView(
                                        children: <Widget>[
                                          Container(
                                            // height: 207,
                                             height:  MediaQuery.of(context).size.height/2.9,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        'VIU+Gaana for 1Month',
                                                        style: TextStyle(
                                                            color: Color(0xff545454),
                                                            fontSize: 17,
                                                            fontFamily: "Roboto6",
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'INR',
                                                                style: TextStyle(
                                                                    color:
                                                                        Color(0xff545454),
                                                                    fontSize: 12,
                                                                    fontFamily:
                                                                        "Roboto6",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Text(
                                                                '99',
                                                                style: TextStyle(
                                                                    color:
                                                                        Color(0xff545454),
                                                                    fontSize: 16,
                                                                    fontFamily:
                                                                        "Roboto6",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 7),
                                                  Text(
                                                    'Get Gana code in 48 hrs by Email Full',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                  Text(
                                                    'access to all free and Premium Videos. ..',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/paytm.png',
                                                          height: 30,
                                                          width: 30,
                                                        ),
                                                        Text(
                                                          'Buy',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    color: Color(0xfff5f5f5),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/gpay.jpg',
                                                          height: 30,
                                                          width: 40,
                                                        ),
                                                        Text(
                                                          'Buy',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    color: Color(0xfff5f5f5),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/freecharge.png',
                                                          height: 31,
                                                          width: 50,
                                                        ),
                                                        Text(
                                                          'Buy',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Container(
                                            // height: 110,
                                             height:  MediaQuery.of(context).size.height/5.5,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0, right: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        '1 Day',
                                                        style: TextStyle(
                                                            color: Color(0xff545454),
                                                            fontSize: 17,
                                                            fontFamily: "Roboto6",
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'R',
                                                                style: TextStyle(
                                                                    color:
                                                                        Color(0xff545454),
                                                                    fontSize: 12,
                                                                    fontFamily:
                                                                        "Roboto6",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Container(
                                                                 transform:
                                                                     Matrix4.translationValues(0.0, -3.0, 0.0),
                                                                child: Text(
                                                                  '1',
                                                                  style: TextStyle(
                                                                      color:
                                                                          Color(0xff545454),
                                                                      fontSize: 18,
                                                                      fontFamily:
                                                                          "Roboto6",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'FUll access to all free and Premium',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                  Text(
                                                    'Videos. No ads, Cancel anytime',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                  //SizedBox(height:10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/paytm.png',
                                                          height: 40,
                                                          width: 40,
                                                        ),
                                                        Text(
                                                          'Pay',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            // height: 207,
                                             height:  MediaQuery.of(context).size.height/2.8,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        '6 Months',
                                                        style: TextStyle(
                                                            color: Color(0xff545454),
                                                            fontSize: 17,
                                                            fontFamily: "Roboto6",
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'INR',
                                                                style: TextStyle(
                                                                    color:
                                                                        Color(0xff545454),
                                                                    fontSize: 12,
                                                                    fontFamily:
                                                                        "Roboto6",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Text(
                                                                '299',
                                                                style: TextStyle(
                                                                    color:
                                                                        Color(0xff545454),
                                                                    fontSize: 16,
                                                                    fontFamily:
                                                                        "Roboto6",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'FUll access to all free and Premium.',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                  Text(
                                                    'Videos No ads, Cancel anytime',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/paytm.png',
                                                          height: 30,
                                                          width: 30,
                                                        ),
                                                        Text(
                                                          'Buy',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    color: Color(0xfff5f5f5),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/gpay.jpg',
                                                          height: 30,
                                                          width: 40,
                                                        ),
                                                        Text(
                                                          'Buy',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    color: Color(0xfff5f5f5),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'images/freecharge.png',
                                                          height: 31,
                                                          width: 50,
                                                        ),
                                                        Text(
                                                          'Buy',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.yellow[900],
                                                            fontSize: 12,
                                                            fontFamily: "Roboto",
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .push(new MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    new PromoCode(),
                                              ));
                                            },
                                            child: Container(
                                              // height: 94,
                                               height:  MediaQuery.of(context).size.height/6.3,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              // height: 100,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 15.0,
                                                  left: 15,
                                                  right: 15,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      "PROMO CODE",
                                                      style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12,
                                                        color: Color(0xff545454),
                                                        //fontStyle: FontStyle.italic,
                                                      ),
                                                    ),
                                                    //    SizedBox(
                                                    //   height: 10,
                                                    // ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Container(
                                                          width: 200,
                                                          child: TextFormField(
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Enter Code here',
                                                              border:
                                                                  InputBorder.none,
                                                              hintStyle: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                      Colors.grey,
                                                                  fontFamily:
                                                                      "Roboto"),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "APPLY",
                                                          style: TextStyle(
                                                            fontFamily: 'Roboto',
                                                            fontSize: 13,
                                                            color: Color(0xff545454),
                                                            //fontStyle: FontStyle.italic,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      transform:
                                                          Matrix4.translationValues(
                                                              0.0, -18.0, 0.0),
                                                      child: Divider(
                                                        color: Color(0xff545454)
                                                            .withOpacity(0.9),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
       
      ),
    );
  }
}
