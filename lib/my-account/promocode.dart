import 'dart:math';

import 'package:flutter/material.dart';

class PromoCode extends StatefulWidget {
  @override
  _PromoCodeState createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      // backgroundColor: Color(0xff549cda),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 350,
                color: Color(0xff549cda),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.arrow_back,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Promocode',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: "Roboto6",
                                letterSpacing: sqrt1_2,
                                fontWeight: FontWeight.w500),
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
                                Text(
                                  'Have a',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_2,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Promocode?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_2,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Get your Premimum offer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_2,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            //  Container(
                            //      transform: Matrix4.translationValues(0.0, -25.0, 0.0),
                            //      child: Image.asset(
                            //        'images/rasikanna1.png',
                            //        height: 200,
                            //       //height: MediaQuery.of(context).size.height,
                            //        width: 200,
                            //      ),
                            //  ),
                            Container(
                              transform:
                                  Matrix4.translationValues(0.0, -30.0, 0.0),
                              width: 180.0,
                              height: 270.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('images/virat4.png'),
                                fit: BoxFit.fill,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      transform: Matrix4.translationValues(0.0, -80.0, 0.0),
                      color: Color(0xFFF5F5F5),
                      height: 102,
                      child: Container(
                        //   height: 50,
                        transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 15.0,
                                left: 15,
                                right: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 200,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Enter Code here',
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "APPLY",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 13,
                                          color: Colors.red,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    transform:
                                        Matrix4.translationValues(0.0, -18.0, 0.0),
                                    child: Divider(
                                      color: Colors.red.withOpacity(0.9),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:40),
                  Text('Drama you love Anytime. Anywhere',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  ),
                ],
              )
        
              //  Container(
              //    // height: 120,
              //    color: Color(0xfff5f5f5),
              //    transform: Matrix4.translationValues(0.0, -160.0, 0.0),
              //  child: Container(
              // //   height: 50,
              //    transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              //    child: Card(
              //           elevation: 3,
              //           shape: RoundedRectangleBorder(
              //             borderRadius: const BorderRadius.all(
              //               Radius.circular(13.0),
              //             ),
              //           ),
              //           child: Container(
              //             width: MediaQuery.of(context).size.width,
              //            // height: 40,
              //             child: Padding(
              //               padding: const EdgeInsets.only(
              //                   top: 15.0, left: 15, right: 15, bottom: 5),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: <Widget>[
              //                   SizedBox(
              //                     height: 10,
              //                   ),
              //                   Text(
              //                     "MOBILE",
              //                     style: TextStyle(
              //                       fontFamily: 'Roboto',
              //                       fontSize: 12,
              //                       color: Color(0xff545454),
              //                       //fontStyle: FontStyle.italic,
              //                     ),
              //                   ),
              //                      SizedBox(
              //                     height: 10,
              //                   ),
              //                    Text(
              //                     "919876543210",
              //                     style: TextStyle(
              //                       fontFamily: 'Roboto',
              //                       fontSize: 16,
              //                       color: Colors.black,
              //                       //fontStyle: FontStyle.italic,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //  ),
              //  ),
            ],
          ),
        ),
      ),
    );
  }
}
