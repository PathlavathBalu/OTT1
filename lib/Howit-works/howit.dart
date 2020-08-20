import 'package:flutter/material.dart';
import 'package:OTT1/nav_drawer.dart';
class HowitWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        drawer: NavDrawer(),
        key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.9),
          title:  Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 1),
                Text(
                  "How it's works",
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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                     Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                          SizedBox(height:20),
                           
                ],
              ),
            ),
          ),
        ),
    );
  }
}