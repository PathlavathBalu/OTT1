import 'dart:math';
import 'package:OTT1/Home/next_screen.dart';
import 'package:OTT1/new/new.dart';
import 'package:flutter/material.dart';
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
          // padding: EdgeInsets.only(left:3),
          child: ListView(
            //  scrollDirection: Axis.horizontal,
            children: <Widget>[
              //SizedBox(height: 10),
              Slide(),
              SizedBox(height: 15),
              Categories(),
              SizedBox(height: 15),
              NewViu(),
              SizedBox(height: 15),
              Original(),
              SizedBox(height: 15),
              JabardastMovies(),
              SizedBox(height: 15),
              PatasMovies(),
              SizedBox(height: 15),
              PorapoveMovies(),
              SizedBox(height: 15),
                HolidaySeason(),
              SizedBox(height: 15),
                KoreanMovies(),
              SizedBox(height: 15),
            ],
          ),
        );
}
}

class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                    // border: Border.all(width: 1, color: Colors.white),
                   color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/00.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/01.jpg'),
                      fit: BoxFit.fill,
                    ),
                    
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/02.jpg'),
                      fit: BoxFit.fill,
                    ),
                    //       boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0XFF252C55),
                    //       offset: Offset(4, 4),
                    //       blurRadius: 5),
                    // ],
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                   color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/03.jpg'),
                      fit: BoxFit.fill,
                    ),
                    //       boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0XFF252C55),
                    //       offset: Offset(4, 4),
                    //       blurRadius: 5),
                    // ],
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/04.jpg'),
                      fit: BoxFit.fill,
                    ),
                    //       boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0XFF252C55),
                    //       offset: Offset(4, 4),
                    //       blurRadius: 5),
                    // ],
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                   color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/05.jpg'),
                      fit: BoxFit.fill,
                    ),
                    //       boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0XFF252C55),
                    //       offset: Offset(4, 4),
                    //       blurRadius: 5),
                    // ],
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                  color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/06.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    //       boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0XFF252C55),
                    //       offset: Offset(4, 4),
                    //       blurRadius: 5),
                    // ],
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 349,
                  height: 185.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                            // border: Border.all(color: Color(0XFFF5F5F5)),
                            // borderRadius:
                            //     BorderRadius.all(Radius.circular(8.0)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                    image: DecorationImage(
                      image: AssetImage('images/07.jpg'),
                      fit: BoxFit.fill,
                    ),
                    //       boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0XFF252C55),
                    //       offset: Offset(4, 4),
                    //       blurRadius: 5),
                    // ],
                  ),
                ),
              ),
                      onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NextScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(children: <Widget>[
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat11.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // colors: [Color(0xffa2242c).withOpacity(0.4), Color(0xffa2242c).withOpacity(0.4)],
                                  colors: [
                                    Colors.red.withOpacity(0.8),
                                    Colors.red.withOpacity(0.8)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'NEW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat1.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.9),
                                    Colors.red.withOpacity(0.9)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'ORIGINAL',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat7.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.7),
                                    Colors.red.withOpacity(0.7)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'MOVIES',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat0.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.9),
                                    Colors.red.withOpacity(0.9)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'PATAS MOVIES',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat3.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.9),
                                    Colors.red.withOpacity(0.9)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'PORA POVE MOVIES',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat4.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.9),
                                    Colors.red.withOpacity(0.9)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'HOLIDAY MOVIES',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat6.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.8),
                                    Colors.red.withOpacity(0.8)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'KOREAN MOVIES',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat8.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.8),
                                    Colors.red.withOpacity(0.8)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'TOP TRENDING',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat9.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.9),
                                    Colors.red.withOpacity(0.9)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'BEST OF INDIA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    child: Container(
                        width: 150.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/cat10.jpg'),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.withOpacity(0.9),
                                    Colors.red.withOpacity(0.9)
                                  ],
                                  // begin: Alignment.topLeft,
                                  // end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            Center(
                              child: Text(
                                'POPULAR DRAMAS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto6",
                                    fontSize: 11,
                                    letterSpacing: sqrt(4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new New(),
                      ));
                    },
                  ),
                ]),
              )),
        ],
      ),
    ));
  }
}

class NewViu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'NEW ON VIU',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/harry-potter.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/War1.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ala.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/venum.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/x-man.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}

class Original extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'VIU ORIGINAL',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/ori0.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori1.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori4.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori2.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori3.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori5.png'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori6.jpeg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori8.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori9.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}

class JabardastMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'JABARDAST MOVIES',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/jab0.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab1.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab4.jpeg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab2.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab3.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab5.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab6.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab8.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab9.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}

class PatasMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'PATAS MOVIES',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/patas0.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas1.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas4.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas2.png'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas3.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas5.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas6.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas8.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas9.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}

class PorapoveMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'PORA POVE MOVIES',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/pove0.jpeg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove1.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove4.jpeg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove2.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove3.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove5.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove6.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove8.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove9.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}

class  HolidaySeason extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'HOLIDAY MOVIES',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/02.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab6.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/cat4.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas5.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove3.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori6.jpeg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori9.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}

class  KoreanMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BEST OF KOREAN SHOWS',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                              image: DecorationImage(
                                  image: AssetImage('images/k.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/jab1.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                             color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/pove4.jpeg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas2.png'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff777777).withOpacity(0.5),
                                  spreadRadius: 1,
                                  
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ],
                                image: DecorationImage(
                                    image: AssetImage('images/x-man.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/ori2.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas6.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas7.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas8.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                spreadRadius: 1,

                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                                image: DecorationImage(
                                    image: AssetImage('images/patas9.jpg'),
                                    fit: BoxFit.fill)),
                            width: 106.0,
                            height: 145.0,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                    ]),
              )),
        ],
      ),
    ));
  }
}