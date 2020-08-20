import 'package:flutter/material.dart';

class SendEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  child: Icon(
                    Icons.clear,
                  ),
                  onTap: () {
                                Navigator.pop(context);
                              },
                ),
                SizedBox(height: 20),
                Text(
                  'The following information will ne included in your e-mail',
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
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 10),
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
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 5),
                          child: Text(
                            'Issue',
                            style: TextStyle(
                              fontFamily: "Roboto6",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                      child: Text(
                        'Manage Your Prime Video Experience-Data, PIN, & Subtitles-Managing Mobile Data',
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                      child: Text(
                        'Tell us a little more about your issue',
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
                        'Send e-mail',
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
                SizedBox(height: 10),
                Text(
                  'You should receive a respnse from one of your representatives within 12-24 hours',
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 13,
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
