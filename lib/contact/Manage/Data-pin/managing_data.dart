import 'package:OTT1/contact/Manage/Data-pin/send_email.dart';
import 'package:OTT1/contact/Manage/Data-pin/send_phone.dart';
import 'package:flutter/material.dart';
class ManageMobile extends StatelessWidget {
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
                        "Manage Your Movie Video Experience-Data, PIN, & Subtitles - Managing Mobile data",
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
            padding: const EdgeInsets.all(10.0),
            child: Column(
               children: <Widget>[
                 Text(
                   'To manage the amount of data Movie Video uses to play movies ana TV shows on your mobile device, open My Stuff, tap Settings and select Stream & Download to set a default video quality or turn on "Wi-Fi Only" mode',
                   style: TextStyle(
                     fontSize: 16,
                      fontFamily: 'Roboto6',
                   ),
                 ),
                 SizedBox(height: 15,),
                 Text(
                   'Still need help? How would you like to contact us',
                    style: TextStyle(
                     fontSize: 16,
                      fontFamily: 'Roboto6',
                   ),
                 ),
                 SizedBox(height: 20),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'E-mail',
                             style: TextStyle(
                           fontSize: 14,
                            fontFamily: 'Roboto6',
                     ),
                          ),
                        ),
                      ),
                    ),
                     onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new SendEmail(),
                          ));
                        },
                  ),
                    SizedBox(height: 10),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Phone',
                             style: TextStyle(
                           fontSize: 14,
                            fontFamily: 'Roboto6',
                     ),
                          ),
                        ),
                      ),
                    ),
                     onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new SendPhone(),
                          ));
                        },
                  ),
               ],
            ),
          ),
        ),
    );
  }
}