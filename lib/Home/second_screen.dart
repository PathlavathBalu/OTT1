
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
// import 'package:video_player/video_player.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> with SingleTickerProviderStateMixin {
   TabController _controller1;
  
   String videoURL = "https://www.youtube.com/watch?v=X4bF_quwNtw";
   YoutubePlayerController _controller;


   @override
  void initState() {
     super.initState();
    _controller1 = new TabController(length: 2, vsync: this);
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
      flags: YoutubePlayerFlags(
       autoPlay:false,
       mute: false,
       isLive: true,

     )
        
      
    );
    // _livevideocontroller=YoutubePlayerController(
      
    //  initialVideoId: YoutubePlayer.convertUrlToId(livevideoURL),
    //  flags: YoutubePlayerFlags(
    //    autoPlay:false,
    //    mute: true,
    //    isLive: true,

    //  )
     
    //   );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.red.withOpacity(0.9),
               expandedHeight: MediaQuery.of(context).size.height/2.89,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Column(
                  children: <Widget>[
                Container(
                  // height: MediaQuery.of(context).size.height/2.7,
                   height: 303.h,
                  child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
                ),                 
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(
          transform: Matrix4.translationValues(0.0, -19.0, 0.0),
          padding: EdgeInsets.only(left:10, right: 10, bottom: 10),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                  Text(
                    'LUCIFER',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto6",
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text(
                        '97% Match',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '2020',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '13+',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '1h 25min',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Todd Phillips helms a gritty origin story starring Joaquin Phoenix and Robert De Niro that centers around the iconic arch nemesis in an original, standalone story not seen before on screen.  Phillips' exploration of Arthur Fleck, a man disregarded by society, is not only a harsh character study, but also a broader cautionary tale.",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto6",
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Starring:',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '	Tom Ellis, Lauren German, DB Woodside',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Genres:',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '	Drama, Suspense',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Languages:',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'English',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto6",
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0XFFF5F5F5),
                              radius: 10,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'My List',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto6",
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0XFFF5F5F5),
                              radius: 10,
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Rate',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto6",
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0XFFF5F5F5),
                              radius: 10,
                              child: Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto6",
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0XFFF5F5F5),
                              radius: 10,
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Download',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto6",
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 10,
                    endIndent: 0,
                  ),
                   Container(
                //   decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
                child: new TabBar(
                  controller: _controller1,
                  tabs: [
                    new Tab(
                      icon:Text(
                        'EPISODES',
                         style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: "Roboto6"
                          ),
                      ),
                    ),
                    new Tab(
                      icon:  Text(
                          "SIMILAR",
                          style: TextStyle(
                         fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                    ),
                  ],
                ),
              ),
                new Container(
                  //height: MediaQuery.of(context).size.height,
                height: 945,
                child: new TabBarView(
                  controller: _controller1,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height:10),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                                 borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                             ),
                              child: Column(
                                children: <Widget>[
                                 Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          
                              image: DecorationImage(
                                  image: AssetImage('images/l0.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                            height: 170.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                            "Episode 1",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                        ),
                        Container(width:170),
                        CircleAvatar(
                            backgroundColor: Color(0xfff5f5f5),
                            radius: 15,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                              size: 13,
                              ),
                        ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0, right: 10, bottom: 15, top: 5),
                            child: Text(
                              "Bored and unhappy as the Lord of Hell, Lucifer Morningstar has resigned his throne and retired to the City of Angels, where he teams up with an LAPD detective to solve.crimes Whether it's a...",   
                                   style: TextStyle(
                                fontSize: 11,
                                fontFamily: "Roboto",
                                color: Colors.black87,
                              ),
                            ),
                          ),
                                ],
                              ),
                            ),
                             SizedBox(height:25),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                                 borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                             ),
                              child: Column(
                                children: <Widget>[
                                 Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          
                              image: DecorationImage(
                                  image: AssetImage('images/l1.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                            height: 170.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                            "Episode 2",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                        ),
                        Container(width:170),
                        CircleAvatar(
                            backgroundColor: Color(0xfff5f5f5),
                            radius: 15,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                              size: 13,
                              ),
                        ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0, right: 10, bottom: 15, top: 5),
                            child: Text(
                              "Bored and unhappy as the Lord of Hell, Lucifer Morningstar has resigned his throne and retired to the City of Angels, where he teams up with an LAPD detective to solve.crimes Whether it's a...",   
                                   style: TextStyle(
                                fontSize: 11,
                                fontFamily: "Roboto",
                                color: Colors.black87,
                              ),
                            ),
                          ),
                                ],
                              ),
                            ),
                           
                             SizedBox(height:25),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                                 borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                             ),
                              child: Column(
                                children: <Widget>[
                                 Container(
                            decoration: BoxDecoration(
                           color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          
                              image: DecorationImage(
                                  image: AssetImage('images/l2.jpg'),
                                  fit: BoxFit.fill),
                            ),
                            width: double.infinity,
                            height: 170.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                            "Episode 3",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                        ),
                        Container(width:170),
                        CircleAvatar(
                            backgroundColor: Color(0xfff5f5f5),
                            radius: 15,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                              size: 13,
                              ),
                        ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0, right: 10, bottom: 15, top: 5),
                            child: Text(
                              "Bored and unhappy as the Lord of Hell, Lucifer Morningstar has resigned his throne and retired to the City of Angels, where he teams up with an LAPD detective to solve.crimes Whether it's a...",   
                                   style: TextStyle(
                                fontSize: 11,
                                fontFamily: "Roboto",
                                color: Colors.black87,
                              ),
                            ),
                          ),
                                ],
                              ),
                            ),
                        //       SizedBox(height:25),
                        //    Container(
                        //      decoration: BoxDecoration(
                        //        color: Colors.white,
                        //          borderRadius:
                        //           BorderRadius.all(Radius.circular(10.0)),
                        //      ),
                        //       child: Column(
                        //         children: <Widget>[
                        //          Container(
                        //     decoration: BoxDecoration(
                        //    color: Colors.transparent,
                        //   borderRadius: BorderRadius.only(
                        //         topLeft: Radius.circular(10),
                        //         topRight: Radius.circular(10)),
                          
                        //       image: DecorationImage(
                        //           image: AssetImage('images/l3.jpg'),
                        //           fit: BoxFit.fill),
                        //     ),
                        //     width: double.infinity,
                        //     height: 170.0,
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.all(7.0),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //       children: <Widget>[
                        //         Text(
                        //     "Episode 4",
                        //     style: TextStyle(
                        //       fontSize: 15,
                        //     ),
                        // ),
                        // Container(width:170),
                        // CircleAvatar(
                        //     backgroundColor: Color(0xfff5f5f5),
                        //     radius: 15,
                        //     child: Icon(
                        //       Icons.arrow_downward,
                        //       color: Colors.black,
                        //       size: 13,
                        //       ),
                        // ),
                        //       ],
                        //     ),
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.only(left:10.0, right: 10, bottom: 15, top: 5),
                        //     child: Text(
                        //       "Bored and unhappy as the Lord of Hell, Lucifer Morningstar has resigned his throne and retired to the City of Angels, where he teams up with an LAPD detective to solve.crimes Whether it's a...",   
                        //            style: TextStyle(
                        //         fontSize: 11,
                        //         fontFamily: "Roboto",
                        //         color: Colors.black87,
                        //       ),
                        //     ),
                        //   ),
                        //         ],
                        //       ),
                        //     ),
                        //       SizedBox(height:25),
                        //    Container(
                        //      decoration: BoxDecoration(
                        //        color: Colors.white,
                        //          borderRadius:
                        //           BorderRadius.all(Radius.circular(10.0)),
                        //      ),
                        //       child: Column(
                        //         children: <Widget>[
                        //          Container(
                        //     decoration: BoxDecoration(
                        //    color: Colors.transparent,
                        //   borderRadius: BorderRadius.only(
                        //         topLeft: Radius.circular(10),
                        //         topRight: Radius.circular(10)),
                          
                        //       image: DecorationImage(
                        //           image: AssetImage('images/l4.jpg'),
                        //           fit: BoxFit.fill),
                        //     ),
                        //     width: double.infinity,
                        //     height: 170.0,
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.all(7.0),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //       children: <Widget>[
                        //         Text(
                        //     "Episode 5",
                        //     style: TextStyle(
                        //       fontSize: 15,
                        //     ),
                        // ),
                        // Container(width:170),
                        // CircleAvatar(
                        //     backgroundColor: Color(0xfff5f5f5),
                        //     radius: 15,
                        //     child: Icon(
                        //       Icons.arrow_downward,
                        //       color: Colors.black,
                        //       size: 13,
                        //       ),
                        // ),
                        //       ],
                        //     ),
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.only(left:10.0, right: 10, bottom: 15, top: 5),
                        //     child: Text(
                        //       "Bored and unhappy as the Lord of Hell, Lucifer Morningstar has resigned his throne and retired to the City of Angels, where he teams up with an LAPD detective to solve.crimes Whether it's a...",   
                        //            style: TextStyle(
                        //         fontSize: 11,
                        //         fontFamily: "Roboto",
                        //         color: Colors.black87,
                        //       ),
                        //     ),
                        //   ),
                        //         ],
                        //       ),
                        //     ),




                        ],
                      ),
                    ),
                        Container(
                       //   height: 100,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10,),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv1.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv7.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv9.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv113.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv22.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv26.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv31.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv30.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv3.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv13.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv16.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv4.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv34.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv27.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv29.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv21.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv17.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(0.9),
                                        spreadRadius: 1,

                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/tv23.jpg'),
                                        fit: BoxFit.fill)),
                                width: 106.0,
                                height: 145.0,
                              ),
                                      onTap: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) => new SecondScreen(),
                                ));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
