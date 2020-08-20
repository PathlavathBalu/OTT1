import 'dart:math';
import 'package:OTT1/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTT1 APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      //  visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
       body: Container(
         child: Padding(
           padding: const EdgeInsets.all(15.0),
           child: ListView(
             children: <Widget>[
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   SizedBox(height: 20,),
                  Text(
                    'What Do you like to ',
                    style: TextStyle(
                      color: Colors.white,
                       fontFamily: 'Roboto',
                       fontWeight: FontWeight.w500,
                       letterSpacing: sqrt1_2,
                       fontSize: 24,
                    ),
                  ),
                  Text(
                    'watch more?',
                    style: TextStyle(
                      color: Colors.white,
                       fontFamily: 'Roboto',
                       letterSpacing: sqrt1_2,
                       fontWeight: FontWeight.w500,
                       fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'You can change this later in Settings.',
                    style: TextStyle(
                      color: Color(0xFF777777),
                       fontFamily: 'Roboto',
                       letterSpacing: sqrt1_2,
                       fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    child: Image.asset(
                      'images/Hindi.jpg',
                    ),
                    onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new SplashScreen(),
                              ));
                            },
                  ),
                   InkWell(
                     child: Padding(
                        padding: const EdgeInsets.only(left:4.0),
                       child: Image.asset(
                        'images/Telugu.jpg',
                  ),
                     ),
                     onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new SplashScreen(),
                              ));
                            },
                   ),
                   InkWell(
                     child: Padding(
                       padding: const EdgeInsets.only(left:4.0),
                       child: Image.asset(
                        'images/Tamil.jpg',
                          width: double.infinity
                  ),
                     ),
                     onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new SplashScreen(),
                              ));
                            },
                   ),
                   SizedBox(height: 10,),
                   InkWell(
                     child: Image.asset(
                      'images/korean2.jpg',
                      width: double.infinity
                  ),
                  onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new SplashScreen(),
                              ));
                            },
                   ),
               ],),
             ],
           ),
         ),
        
       ),
    );
  }
}

