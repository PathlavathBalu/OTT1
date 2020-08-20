import 'package:OTT1/contact/App-Issue/app_issue.dart';
import 'package:OTT1/contact/Manage/Data-pin/managing_Viewing.dart';
import 'package:OTT1/contact/feedback/feed_back.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:OTT1/contact/Manage/manage.dart';
class Contact extends StatelessWidget {
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
                  "Tell us more about your issue",
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
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                 // SizedBox(height: 20,),
                  Container(
                      decoration: BoxDecoration(
                        //color: Colors.lightBlue,
                           border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                'Manage Your Movie video Experience',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                               Icon(
                                Icons.keyboard_arrow_right,
                              ),
                              ],
                            ),
                          ),
                              onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new Manage(),
                          ));
                        },
                        ),
                           Divider(
                             color: Colors.black,
                           ),
                             InkWell(
                               child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Text(
                                'App Issues',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                            ),
                               Icon(
                                Icons.keyboard_arrow_right,
                            ),
                            ],
                          ),
                        ),
                          onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new AppIssues(),
                          ));
                        },
                             ),
                           Divider(
                             color: Colors.black,
                           ),
                             InkWell(
                               child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Text(
                                'Movie Membership Issue',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                            ),
                               Icon(
                                Icons.keyboard_arrow_right,
                            ),
                            ],
                          ),
                        ),
                          onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new ManageViewing(),
                          ));
                        },
                             ),
                           Divider(
                             color: Colors.black,
                           ),
                             InkWell(
                               child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Text(
                                'Give Feedback',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                            ),
                               Icon(
                                Icons.keyboard_arrow_right,
                            ),
                            ],
                          ),
                        ),
                          onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new FeedBack(),
                          ));
                        },
                             ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}