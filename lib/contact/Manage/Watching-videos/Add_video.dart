import 'package:flutter/material.dart';
class AddVod extends StatelessWidget {
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
                   'To add a video to your Watchlist, select the Add to Watchlist option in the stored on your Watchlist until you select Remove from Watchlist in the video details.',
                   style: TextStyle(
                     fontSize: 16,
                      fontFamily: 'Roboto6',
                   ),
                 ),
                  SizedBox(height: 5,),
                 Text(
                   "Tip: if you're a Prime member, eligible Prime Titles also display a Watch Now option once you open them from your watchlist",
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
                  Container(
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
                    SizedBox(height: 10),
                  Container(
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
               ],
            ),
          ),
        ),
    );
  }
}