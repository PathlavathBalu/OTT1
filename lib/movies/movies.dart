import 'package:OTT1/Home/next_screen.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';
class Movies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        drawer: NavDrawer(),
        key: _scaffoldKey,
        appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.9),
          // title:  Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       //SizedBox(width: 1),
          //       Text(
          //         "Movies",
          //         style: TextStyle(
          //           fontFamily: 'Roboto6',
          //           fontSize: 17,
          //           color: Colors.white,
          //           //fontStyle: FontStyle.italic,
          //         ),
          //       ),
          //       SizedBox(width: 20),
          //       InkWell(
          //         child: Icon(
          //           Icons.search,
          //           color: Colors.white,
          //           size: 22,
          //         ),
          //         // onTap: () {
          //         //   Navigator.of(context).push(new MaterialPageRoute(
          //         //     builder: (BuildContext context) => new Notify(),
          //         //   ));
          //         // },
          //       ),
          //     ],
          //   ),
          title:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               SizedBox(width: 1),
                Container(
                     transform: Matrix4.translationValues(12.0, 0.0, 0.0),
                  child: Image.asset(
                    'images/logo01.png',
                    height: 33,
                    //  height: MediaQuery.of(context).size.height/5,
                  ),
                ),
                  Container(
                     transform: Matrix4.translationValues(-8.0, 0.0, 0.0),
                    child: Text(
                    "ENTERTAINMENT",
                    style: TextStyle(
                    fontFamily: 'Roboto6',
                      fontSize: 16,
                     // fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                      //fontStyle: FontStyle.italic,
                    ),
                ),
                  ),
                SizedBox(width: 0),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 22,
                  ),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                ),
              ],
            ),
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
            children: <Widget>[
               SizedBox(height: 5),
                MustWatch(),
              SizedBox(height: 25),
              MoviesMake(),
              SizedBox(height: 25),
              BestAction(),
              SizedBox(height: 25),
              FunTime(),
              SizedBox(height: 25),
              ComedyMovies(),
              SizedBox(height: 25),
                HolidaySeason(),
              SizedBox(height: 25),
                KoreanMovies(),
              SizedBox(height: 25),
            ],
          ),
        ),
    );
  }
}


class MustWatch extends StatelessWidget {
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
              'A MUST WATCH MOVIES',
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

class MoviesMake extends StatelessWidget {
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
              'MOVIES THAT WILL MAKE YOU FALL IN LOVE',
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

class BestAction extends StatelessWidget {
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
              'THE BEST ACTION & THRILLER MOVIES',
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

class FunTime extends StatelessWidget {
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
              'FUN TIME CINEMA',
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

class ComedyMovies extends StatelessWidget {
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
              'COMEDY MOVIES',
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
                                  image: AssetImage('images/pove9.jpg'),
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

class CustomSearchDelegate extends SearchDelegate {
  //  ThemeData appBarTheme(BuildContext context) {
  //   assert(context != null);
  //   final ThemeData theme = Theme.of(context);
  //   assert(theme != null);
  //   return theme;
  // }
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }

    //Add the search term to the searchBloc.
    //The Bloc will then handle the searching and add the results to the searchResults stream.
    //This is the equivalent of submitting the search term to whatever search service you are using
    // InheritedBlocs.of(context)
    //     .searchBloc
    //     .searchTerm
    //     .add(query);

    return Column(
      children: <Widget>[
        //Build the results based on the searchResults stream in the searchBloc
        StreamBuilder(
          //stream: InheritedBlocs.of(context).searchBloc.searchResults,
          builder: (context, AsyncSnapshot<List<Result>> snapshot) {
            if (!snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                ],
              );
            } else if (snapshot.data.length == 0) {
              return Column(
                children: <Widget>[
                  Text(
                    "No Results Found.",
                  ),
                ],
              );
            } else {
              var results = snapshot.data;
              return ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  var result = results[index];
                  return ListTile(
                    title: Text('wefgr '),
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // This method is called everytime the search term changes.
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.
    return Column();
  }
}

class Result {}
