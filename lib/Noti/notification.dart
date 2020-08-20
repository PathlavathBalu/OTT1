import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';
class Noti extends StatelessWidget {
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
                  "Notifications",
                  style: TextStyle(
                    fontFamily: 'Roboto6',
                    fontSize: 17,
                    color: Colors.white
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
        body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               CircleAvatar(
                 radius: 40,
                 backgroundColor: Colors.white,
                 child: Icon(
                   Icons.notifications,
                   color: Colors.black,
                   size: 28,
                 ),
               ),
               SizedBox(height:6),
               Text(
                 'All your notifications will show up here',
                 style: TextStyle(
                   fontSize: 15,
                   fontFamily: "Roboto"
                 ),
               ),
             ],
           ),
        ),
    );
  }
}