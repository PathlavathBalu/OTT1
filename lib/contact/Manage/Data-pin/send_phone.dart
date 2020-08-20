import 'package:flutter/material.dart';

class SendPhone extends StatelessWidget {
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
                  'Talk with Amazon Customer Service',
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
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Because of high call volumes, we cannot take your call...',
                            style: TextStyle(
                              fontFamily: "Roboto6",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                   
                  ]),
                ),               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
