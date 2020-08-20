import 'package:OTT1/Home/home_view.dart';
import 'package:OTT1/nav_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTT',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        drawer: NavDrawer(),
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.red.withOpacity(0.9),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 1),
                Container(
                  transform: Matrix4.translationValues(12.0, 0.0, 0.0),
                  // child: Image.asset(
                  //   'images/logo01.png',
                  //   height: 33,
                  //   //  height: MediaQuery.of(context).size.height/5,
                  // ),
                  height: 33,
                ),
                Container(
                  transform: Matrix4.translationValues(-8.0, 0.0, 0.0),
                  child: Text(
                    "ENTERTAINMENT",
                    style: TextStyle(
                        fontFamily: 'Roboto6',
                        fontSize: 16,
                        // fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        //fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
                SizedBox(width: 0),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 22,
                  ),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                ),
              ],
            ),
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
        body: HomeView(),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  //  ThemeData appBarTheme(BuildContext context) {
  //   assert(context != null);
  //   final ThemeData theme = Theme.of(context);
  //   assert(theme != null);
  //   return theme;
  // }
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }

    //Add the search term to the searchBloc.
    //The Bloc will then handle the searching and add the results to the searchResults stream.
    //This is the equivalent of submitting the search term to whatever search service you are using
    // InheritedBlocs.of(context)
    //     .searchBloc
    //     .searchTerm
    //     .add(query);

    return Column(
      children: <Widget>[
        //Build the results based on the searchResults stream in the searchBloc
        StreamBuilder(
          //stream: InheritedBlocs.of(context).searchBloc.searchResults,
          builder: (context, AsyncSnapshot<List<Result>> snapshot) {
            if (!snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                ],
              );
            } else if (snapshot.data.length == 0) {
              return Column(
                children: <Widget>[
                  Text(
                    "No Results Found.",
                  ),
                ],
              );
            } else {
              var results = snapshot.data;
              return ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  var result = results[index];
                  return ListTile(
                    title: Text('wefgr '),
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // This method is called everytime the search term changes.
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.
    return Column();
  }
}

class Result {}
