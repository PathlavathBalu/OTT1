import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';
import 'package:OTT1/Home/next_screen.dart';
import 'package:OTT1/new/new.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView() : super();

  final String title = "Carousel Demo";
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://tyroneeagleeyenews.com/wp-content/uploads/2019/10/maxresdefault-1.jpg',
    'https://cdn57.androidauthority.net/wp-content/uploads/2019/11/avengers-engame-disney-plus.jpg',
    'https://i.ytimg.com/vi/ESHd_-gUBGc/maxresdefault.jpg',
    'https://images.indianexpress.com/2017/12/agnyaathavaasi-1200.jpg',
    'https://images.indianexpress.com/2020/01/Ala-Vaikunthapurramuloo-movie-review-1200.jpg',
    'https://1.bp.blogspot.com/-XH0EQZZseV8/XogdLHhl5QI/AAAAAAAALoU/nN3WqMxgdVQhWE8feu4bkZ6MaxlwxEG6QCLcBGAsYHQ/s1600/maxresdefault%2B%25281%2529.jpg',
    'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/12/dabangg-3-1576763967.jpg',
    'https://i.ytimg.com/vi/Hm9UYpf7U5g/maxresdefault.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left:3),
      child: ListView(
        //  scrollDirection: Axis.horizontal,
        children: <Widget>[
          //SizedBox(height: 10),

          Container(
            transform: Matrix4.translationValues(0.0, -5.0, 0.0),
            // padding: EdgeInsets.only(top: ),
            //  decoration: BoxDecoration(
            //    border: Border.all(color: Colors.red),
            //    borderRadius:
            //     BorderRadius.all(Radius.circular(8.0)),
            //  ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                carouselSlider = CarouselSlider(
                  // height: 150.0,
                  height: MediaQuery.of(context).size.height / 3.5,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  reverse: false,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 5),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              //  boxShadow: [
                              //     BoxShadow(
                              //       color: Colors.red.withOpacity(0.9),
                              //       spreadRadius: 5,

                              //       blurRadius: 5,
                              //       offset: Offset(
                              //           0, 7), // changes position of shadow
                              //     ),
                              //   ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.network(
                                imgUrl,
                                fit: BoxFit.cover,
                                //  width: 1000.0,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new NextScreen(),
                            ));
                          },
                        );
                      },
                    );
                  }).toList(),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Colors.black
                            : Colors.red.withOpacity(0.9),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     OutlineButton(
                //       onPressed: goToPrevious,
                //       child: Text("<"),
                //     ),
                //     OutlineButton(
                //       onPressed: goToNext,
                //       child: Text(">"),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),

          // Slide(),
          // SizedBox(height: 25),
          Categories(),

          ///  SizedBox(height: 25),
          NewViu(),
          // SizedBox(height: 25),
          Original(),
          SizedBox(height: 25),
          JabardastMovies(),
          SizedBox(height: 25),
          PatasMovies(),
          SizedBox(height: 25),
          PorapoveMovies(),
          SizedBox(height: 25),
          HolidaySeason(),
          SizedBox(height: 25),
          KoreanMovies(),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 5000), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 5000), curve: Curves.decelerate);
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        transform: Matrix4.translationValues(0.0, -17.0, 0.0),
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
                                    'CHILD MOVIES',
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
                                    'ENTERTAINMENT',
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
                                    'EDUCATION',
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
              'NEW ON YD',
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
              'YD ORIGINAL',
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
              'ENTERTAINMENT MOVIES',
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
              'EDUCATIONAL MOVIES',
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
              'KIDS MOVIES',
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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

class HolidaySeason extends StatelessWidget {
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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

class KoreanMovies extends StatelessWidget {
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 5), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
                                    offset: Offset(
                                        0, 0), // changes position of shadow
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
