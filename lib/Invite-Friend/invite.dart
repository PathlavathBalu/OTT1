import 'dart:math';

import 'package:flutter/material.dart';

class InviteFriend extends StatefulWidget {
  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         backgroundColor: Color(0xfff5f5f5),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                         // width: 150.0,
                          height: 180.0,
                          decoration: BoxDecoration(
                             
                              image: DecorationImage(
                                image: AssetImage('images/invite1.jpg'),
                                fit: BoxFit.fill,
                              )),
                             child:Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Container(
                                     width: 100,
                                   ),
                                   InkWell(
                                     child: Icon(
                                       Icons.clear,
                                       size: 20,
                                       color: Colors.white,
                                     ),
                                          onTap: () {
                  Navigator.pop(context);
                },
                                   ),
                                 ],
                               ),
                             )
                           ),
               SizedBox(height:25),
               Container(
                  transform: Matrix4.translationValues(-25.0, 0.0, 0.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                                        'Invite a friend.',
                                        style: TextStyle(
                                            color: Color(0xff545454),
                                            fontSize: 18,
                                            fontFamily: "Roboto6",
                                            letterSpacing: sqrt1_2,
                                            fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(height:5),  
                                       Text(
                                        'Get one month free',
                                        style: TextStyle(
                                           color: Color(0xff545454),
                                            fontSize: 18,
                                            fontFamily: "Roboto6",
                                            letterSpacing: sqrt1_2,
                                            fontWeight: FontWeight.bold,
                                            ),
                                      ),  
                                      SizedBox(height:10),
                                       Text(
                                        'Invite a friend by sharing the link below.',
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                            fontFamily: "Roboto",
                                            ),
                                      ),  
                                      SizedBox(height:2),
                                       Text(
                                        'Once your friend signs up, you both get',
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                            fontFamily: "Roboto",
                                            ),
                                      ),  
                                      SizedBox(height:2),
                                       Text(
                                        '1 month FREE Premium access to Viuing',
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                            fontFamily: "Roboto",
                                            ),
                                      ),  
                   ],
                 ),
               ),
               SizedBox(height:170),
                // InkWell(
                //               child: Padding(
                //                 padding:
                //                     const EdgeInsets.symmetric(horizontal: 22.0),
                //                 child: Container(
                //                   height: 50,
                //                   decoration: BoxDecoration(
                //                     color: Color(0xff545454),
                //                     borderRadius:
                //                         BorderRadius.all(Radius.circular(24.0)),
                //                   ),
                //                   child: Padding(
                //                     padding: const EdgeInsets.only(left: 18.0),                                  
                //                         child:Center(
                //                           child: Text(
                //                             'Share link',
                //                             style: TextStyle(
                //                               color: Colors.white,
                //                               fontSize: 14,
                //                               fontFamily: "Roboto6",
                //                               letterSpacing: sqrt1_2,
                //                             ),
                                      
                //                   ),
                //                         ),
                //                 ),
                //               ),
                //             ),
                //            onTap: () {
                //         Navigator.of(context).push(new MaterialPageRoute(
                //           builder: (BuildContext context) => new DemoApp(),
                //         ));
                //       },  
                // ),
                 FlatButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            color: Colors.black54,
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(height: 0),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: <Widget>[
                                               Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app.png',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                   Text('Bluetooth',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                 Column(
                                                    children: <Widget>[
                                                   Image.asset(
                                                     'images/app02.png',
                                                     height: 40,
                                                     width: 40,
                                                   ),
                                                   //SizedBox(height:5),
                                                  Text('WhatsApp',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app3.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                  Text('Direct',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                 Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app4.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                   Text('Gmail',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                           SizedBox(height:10),
                                            Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: <Widget>[
                                               Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app5.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                   Text('Add to Circle',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                 Column(
                                                    children: <Widget>[
                                                   Image.asset(
                                                     'images/app6.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                  Text('Messenger',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app7.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                  Text('Drive',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                 Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app8.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                   Text('Clipboard',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                           SizedBox(height:10),
                                            Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: <Widget>[
                                               Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app9.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                   Text('Save to WPS',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                 Column(
                                                    children: <Widget>[
                                                   Image.asset(
                                                     'images/app10.jpg',
                                                     height: 33,
                                                     width: 33,
                                                   ),
                                                   SizedBox(height:5),
                                                  Text('Email',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app11.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                  Text('Message',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                                 Column(
                                                 children: <Widget>[
                                                   Image.asset(
                                                     'images/app12.jpg',
                                                     height: 30,
                                                     width: 30,
                                                   ),
                                                   SizedBox(height:5),
                                                   Text('News Feed',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                 Card(
                                   child: Center(
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text(
                                         'Cancel',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                    ),
                                         ),
                                     )),
                                 ), 
                                 
                                ],
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
              ],
            ),
          ),
      ),
    );
  }
}