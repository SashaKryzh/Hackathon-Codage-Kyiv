import 'package:flutter/material.dart';
import 'package:hackathon/screens/events_page.dart';
import 'package:hackathon/screens/news_page.dart';
import 'package:hackathon/screens/places_page.dart';
import 'package:hackathon/screens/profile_page.dart';
import 'package:hackathon/screens/routes_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentScreen = 0;

  void onBottomNavigationTap(int selectedScreen) {
    setState(() {
      _currentScreen = selectedScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentScreen,
        children: <Widget>[
          NewsPage(),
          PlacesPage(),
          RoutesPage(),
          EventsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        items: [
          BottomNavigationBarItem(
            title: Text('News'),
            icon: Icon(Icons.format_list_bulleted),
          ),
          BottomNavigationBarItem(
            title: Text('Places'),
            icon: Icon(Icons.place),
          ),
          BottomNavigationBarItem(
            title: Text('Routes'),
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            title: Text('Events'),
            icon: Icon(Icons.event),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.account_circle),
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: onBottomNavigationTap,
      ),
    );
  }
}
