import 'package:flutter/material.dart';
import 'package:OTT1/contact/Manage/Data-pin/other_issues.dart';
import 'package:OTT1/contact/Manage/Watching-videos/Add_video.dart';
class WatchVod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
      backgroundColor: Colors.red.withOpacity(0.9),
          title:    Row(
            children: <Widget>[
              Expanded(
                child: Text(
                        "Manage Your Movie Video Experience",
                        style: TextStyle(
                          fontFamily: 'Roboto6',
                          fontSize: 17,
                          color: Colors.white,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
              ),
            ],
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
                                'Managing Your Watchlist',
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
                            builder: (BuildContext context) => new AddVod(),
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
                                'Other Issue',
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
                            builder: (BuildContext context) => new OtherIssue(),
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