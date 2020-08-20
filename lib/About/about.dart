import 'package:OTT1/About/faq.dart';
import 'package:OTT1/About/privacy.dart';
import 'package:OTT1/About/terms.dart';
import 'package:flutter/material.dart';
import 'package:OTT1/nav_drawer.dart';
class About extends StatelessWidget {
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
              "About",
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
          padding: const EdgeInsets.only(left:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 18,),
              Text(
                'Movies',
               style: TextStyle(
                 fontSize: 16,
                 fontFamily: "Roboto6",
               ),
              ),
              SizedBox(height: 10,),
              Divider(
                  color: Colors.grey,
                  endIndent: 15,
                ),
                SizedBox(height: 10,),
                 InkWell(
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Faq(),
                      ));
                    },
                   child: Text(
                'FAQ',
               style: TextStyle(
                   fontSize: 16,
                   fontFamily: "Roboto6",
               ),
              ),
                 ),
              SizedBox(height: 10,),
              Divider(
                  color: Colors.grey,
                  endIndent: 15,
                ),
                SizedBox(height: 10,),
                  InkWell(
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Terms(),
                      ));
                    },
                    child: Text(
                'Terms & Conditions',
               style: TextStyle(
                 fontSize: 16,
                 fontFamily: "Roboto6",
               ),
              ),
                  ),
              SizedBox(height: 10,),
              Divider(
                  color: Colors.grey,
                  endIndent: 15,
                ),
                SizedBox(height: 10,),
                  InkWell(
                     onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Privacy(),
                      ));
                    },
                    child: Text(
                'Privacy Policy',
               style: TextStyle(
                 fontSize: 16,
                 fontFamily: "Roboto6",
               ),
              ),
                  ),
              SizedBox(height: 10,),
              Divider(
                  color: Colors.grey,
                  endIndent: 15,
                ),
                SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}