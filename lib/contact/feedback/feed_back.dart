import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.9),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "Give Feedback",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                'Your Feedback is important and helps us improve our products while we cannot replay to all feedback, all comments are taken into consideration.',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: "Roboto6",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 3),
                        child: Text(
                          'Analog',
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 5),
                        child: Text(
                          'E-mail Address',
                          style: TextStyle(
                            fontFamily: "Roboto6",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Text(
                          'Analogit@gmail.com',
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                    child: Text(
                      'Give Feedback',
                      style: TextStyle(
                        fontFamily: "Roboto6",
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  //color: Colors.lightBlue,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Required',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Send feedback',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto6',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
             Text(
                      'In order to better assist you we will send your device logs to customer support when you contact us',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 13,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
