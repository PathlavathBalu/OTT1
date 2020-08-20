import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = true;
   bool isSwitched1 = false;
  bool isSwitched2 = false;

  var sqrt1_1;

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
              "Settings",
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
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Memory Used : 30%',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Roboto6",
                  letterSpacing: sqrt1_1,
                ),
              ),
              SizedBox(height: 5),
              Container(
                transform: Matrix4.translationValues(-8.0, 0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 20,
                    lineHeight: 3.0,
                    percent: 0.3,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.green,
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(-8.0, 0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'IN USE 15979.5MB',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                          fontFamily: "Roboto",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                      Text(
                        'AVAILABLE 37664.9MB',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                          fontFamily: "Roboto",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
                child: FlatButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 260,
                            color: Color(0xfff5f5f5),
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'PROGRAMMING PREFERENCE',
                                    style: TextStyle(
                                      //color: Colors.grey[700],
                                      fontSize: 12,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_1,
                                    ),
                                  ),
                                ),
                                //SizedBox(height:20),
                                Container(
                                  transform:
                                      Matrix4.translationValues(-3.0, 0.0, 0.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Hindi',
                                      style: TextStyle(
                                        //color: Colors.grey[700],
                                        fontSize: 18,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_1,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -15.0, 0.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Telugu',
                                      style: TextStyle(
                                        //color: Colors.grey[700],
                                        fontSize: 18,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_1,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      -5.0, -25.0, 0.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Tamil',
                                      style: TextStyle(
                                        //color: Colors.grey[700],
                                        fontSize: 18,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_1,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -35.0, 12.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Korean',
                                      style: TextStyle(
                                        //color: Colors.grey[700],
                                        fontSize: 18,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_1,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -35.0, 12.0),
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -15.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        InkWell(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                              //color: Colors.grey[700],
                                              fontSize: 16,
                                              fontFamily: "Roboto6",
                                              letterSpacing: sqrt1_1,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        InkWell(
                                          child: Text(
                                            'Ok',
                                            style: TextStyle(
                                              //color: Colors.grey[700],
                                              fontSize: 16,
                                              fontFamily: "Roboto6",
                                              letterSpacing: sqrt1_1,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Programming Preference',
                        style: TextStyle(
                          //color: Colors.grey[700],
                          fontSize: 16,
                          fontFamily: "Roboto6",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Telugu',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 13,
                          fontFamily: "Roboto",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                endIndent: 15,
              ),
              Container(
                transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
                child: FlatButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 180,
                            color: Color(0xfff5f5f5),
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'APP LANGUAGE',
                                    style: TextStyle(
                                      //color: Colors.grey[700],
                                      fontSize: 12,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_1,
                                    ),
                                  ),
                                ),
                                //SizedBox(height:20),
                                Container(
                                  //    transform: Matrix4.translationValues(-3.0, 0.0, 0.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'English',
                                      style: TextStyle(
                                        //color: Colors.grey[700],
                                        fontSize: 18,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_1,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // transform: Matrix4.translationValues(0.0, -35.0, 12.0),
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                ),
                                Container(
                                  transform:
                                      Matrix4.translationValues(0.0, 15.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        InkWell(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                              //color: Colors.grey[700],
                                              fontSize: 16,
                                              fontFamily: "Roboto6",
                                              letterSpacing: sqrt1_1,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        InkWell(
                                          child: Text(
                                            'Ok',
                                            style: TextStyle(
                                              //color: Colors.grey[700],
                                              fontSize: 16,
                                              fontFamily: "Roboto6",
                                              letterSpacing: sqrt1_1,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'App Language',
                        style: TextStyle(
                          //color: Colors.grey[700],
                          fontSize: 16,
                          fontFamily: "Roboto6",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Telugu',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 13,
                          fontFamily: "Roboto",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                endIndent: 15,
              ),
              Container(
                transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
                child: FlatButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 130,
                            color: Color(0xfff5f5f5),
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'SUBTITLE PREFERENCE',
                                    style: TextStyle(
                                      //color: Colors.grey[700],
                                      fontSize: 12,
                                      fontFamily: "Roboto6",
                                      letterSpacing: sqrt1_1,
                                    ),
                                  ),
                                ),
                                //SizedBox(height:20),
                                Container(
                                  transform:
                                      Matrix4.translationValues(0.0, 10.0, 0.0),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'English',
                                      style: TextStyle(
                                        //color: Colors.grey[700],
                                        fontSize: 18,
                                        fontFamily: "Roboto6",
                                        letterSpacing: sqrt1_1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Subtitle Preference',
                        style: TextStyle(
                          //color: Colors.grey[700],
                          fontSize: 16,
                          fontFamily: "Roboto6",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'English',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 13,
                          fontFamily: "Roboto",
                          letterSpacing: sqrt1_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                endIndent: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 13.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto6",
                        letterSpacing: sqrt1_1,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                endIndent: 15,
              ),
                Padding(
                padding: const EdgeInsets.only(
                    left: 13.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Download Video in HD',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto6",
                        letterSpacing: sqrt1_1,
                      ),
                    ),
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                          print(isSwitched1);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                endIndent: 15,
              ),
                Padding(
                padding: const EdgeInsets.only(
                    left: 13.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Wi-Fi download only',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto6",
                        letterSpacing: sqrt1_1,
                      ),
                    ),
                    Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                          print(isSwitched2);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                endIndent: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
