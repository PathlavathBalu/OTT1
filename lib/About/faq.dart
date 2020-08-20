 import 'package:flutter/material.dart';

 class Faq extends StatefulWidget {
   @override
   _FaqState createState() => _FaqState();
 }
 
 class _FaqState extends State<Faq> {
   bool isExpanded = false;
   @override
   Widget build(BuildContext context) {
     return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.9),
          title:  Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 1),
                Text(
                  "FAQ",
                  style: TextStyle(
                    fontFamily: 'Roboto6',
                    fontSize: 17,
                    color: Colors.white
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            
          ),
          leading: InkWell(
            child: Icon(
              Icons.clear,
              color: Colors.white,
              size: 20,
              ),
               onTap: () {
                      Navigator.pop(context);
                      },
          )
        ),
      body: Container(
       
        child: Column(
          children: <Widget>[
           // SizedBox(height:20.0),
            Container(
              color: Colors.white.withOpacity(0.9),
              child: ExpansionTile(
                title: Text(
                  "A. Getting Started",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                   // fontWeight: FontWeight.w600,
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height:5),
             Container(
              color: Colors.white.withOpacity(0.9),
              child: ExpansionTile(
                title: Text(
                  "B. Account and Settings",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                   // fontWeight: FontWeight.w600,
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height:5),
             Container(
              color: Colors.white.withOpacity(0.9),
              child: ExpansionTile(
                title: Text(
                  "C. Billing Help",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                   // fontWeight: FontWeight.w600,
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height:5),
             Container(
              color: Colors.white.withOpacity(0.9),
              child: ExpansionTile(
                title: Text(
                  "D. About App",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                   // fontWeight: FontWeight.w600,
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
   }
 }

