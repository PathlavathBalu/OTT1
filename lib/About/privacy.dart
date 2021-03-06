import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.9),
          title:  Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 1),
                Text(
                  "Privacy Policy",
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text(
                      "Privacy Statement",
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                        fontSize: 13,
                        color: Colors.grey[700],
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                    Divider(),
                     Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                          SizedBox(height:20),
                           Text(
                      "Protectind your Privacy",
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                        fontSize: 13,
                        color: Colors.grey[700],
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                    Divider(),
                     Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                           SizedBox(height:20),
                         Text(
                    "Your Data",
                    style: TextStyle(
                      fontFamily: 'Roboto6',
                      fontSize: 12,
                      color: Colors.grey[700],
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                  Divider(),
                   Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                            fontSize: 13
                          ),
                        ),
                         SizedBox(height:20),
                         Text(
                    "How we Collect Data",
                    style: TextStyle(
                      fontFamily: 'Roboto6',
                      fontSize: 12,
                      color: Colors.grey[700],
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                  Divider(),
                   Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                            fontSize: 13
                          ),
                        ),
                         SizedBox(height:20),
                         Text(
                    "Privacy Data",
                    style: TextStyle(
                      fontFamily: 'Roboto6',
                      fontSize: 12,
                      color: Colors.grey[700],
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                  Divider(),
                   Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                            fontSize: 13
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