import 'package:OTT1/Home/home.dart';
import 'package:OTT1/Howit-works/howit.dart';
import 'package:OTT1/Noti/notification.dart';
import 'package:OTT1/Settings/settings.dart';
import 'package:OTT1/Signin/signin.dart';
import 'package:OTT1/TV/tv.dart';
import 'package:OTT1/movies/movies.dart';
import 'package:OTT1/my-account/account.dart';
import 'package:OTT1/originals/originals.dart';
import 'package:OTT1/premium/premium.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:OTT1/About/about.dart';
import 'Invite-Friend/invite.dart';
import 'package:OTT1/contact/contact.dart';

class NavDrawer extends StatelessWidget {
   NavDrawer({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
       width: MediaQuery.of(context).size.width/1.5,
        child: Drawer(
          child: Container(
            color: Colors.red.withOpacity(0.9),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                 SizedBox(height:10),
                  InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Home(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Noti(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.notifications,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Notifications',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                   SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new HowitWorks(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.group_work,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      "How it's works",
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                  InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Originals(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.crop_original,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Originals',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                     onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new TvShow(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.tv,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'TV',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),

                  InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Movies(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.videocam,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Movies',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                  InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new SignIn(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.perm_contact_calendar,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16,
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new MyAccount(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'My Account',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                InkWell(
                     onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Premium(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Go Premium',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16                 
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new InviteFriend(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.card_giftcard,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Invite a Friend',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Settings(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.settings,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 16
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => About(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.card_giftcard,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'About',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 17
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22,),
                   InkWell(
                    onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Contact(),
                            ));
                          },
                    child: Row(
                      children: <Widget>[
                         Icon(
                      Icons.contact_phone,
                      size: 20,
                      color: Colors.white,
                      ),
                      SizedBox(width:20),
                       Text(
                      'Contact Us',
                      style: TextStyle(
                        fontFamily: 'Roboto6',
                       color: Colors.white,
                       fontSize: 17
                       
                      ),
                    ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
