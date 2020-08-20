import 'package:OTT1/Home/next_screen.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';
class Originals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        drawer: NavDrawer(),
        key: _scaffoldKey,
        appBar: AppBar(
      backgroundColor: Colors.red.withOpacity(0.9),
          title:  Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 1),
                Text(
                  "Originals",
                  style: TextStyle(
                    fontFamily: 'Roboto6',
                    fontSize: 17,
                    color: Colors.white,
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
               InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or7.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                            height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or1.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or2.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or8.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/00.jpeg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or5.png'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or6.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/06.jpeg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or8.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or9.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or10.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or11.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                       SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/or12.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                  SizedBox(height: 8),
                       InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                  image: AssetImage('images/07.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                           height:  MediaQuery.of(context).size.height/3.3,
                          ),
                        ),
                        onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new NextScreen(),
                      ));
                    },
                      ),
                      SizedBox(height: 3),
              ],
            ),
          ),
        ),
    );
  }
}