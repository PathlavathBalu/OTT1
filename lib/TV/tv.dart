import 'package:OTT1/Home/second_screen.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';

class TvShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      drawer: NavDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
       backgroundColor: Colors.red.withOpacity(0.9),
        title: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 1),
            Text(
              "TV",
              style: TextStyle(
                  fontFamily: 'Roboto6', fontSize: 17, color: Colors.white,
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MustWatch(),
              SizedBox(height: 18),
              AwardWinning(),
              SizedBox(height: 18),
              Thrillers(),
              SizedBox(height: 18),
              LatestTv(),
              SizedBox(height: 18),
              KidsFamilytv(),
              SizedBox(height: 18),
              ComedyTv(),
              SizedBox(height: 18),
              ActionTv(),
              SizedBox(height: 18),
              TopTv(),
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}

class MustWatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'MUST WATCH K DRAMAS',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
            //  scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv0.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv1.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  // Container(width:118),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AwardWinning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'AWARD WINNING KOREAN DRAMAS',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
            //  scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv113.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Thrillers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'THRILLERS',
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
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv.png'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv2.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv3.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv4.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv5.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv6.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv6.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv7.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv0.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv8.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv9.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv10.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv11.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv12.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LatestTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'LATEST TV ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto6',
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          SingleChildScrollView(
            //  scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv13.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv14.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv15.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KidsFamilytv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'KIDS AND FAMILY TV',
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
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv24.jpeg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv29.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv26.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv27.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv28.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv29.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ComedyTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'COMEDY TV',
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
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv30.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv35.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv32.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv33.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv34.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv31.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActionTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'ACTION AND ADVENTURE TV',
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
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv16.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv17.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv18.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv19.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv20.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv21.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv14.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv5.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv10.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv1.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'TOP TV',
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
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv22.jpeg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv23.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv113.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.9),
                              spreadRadius: 1,

                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/tv2.jpg'),
                              fit: BoxFit.fill),
                        ),
                        width: 106.0,
                        height: 145.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new SecondScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
