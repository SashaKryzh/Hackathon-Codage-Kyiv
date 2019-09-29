import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/screens/events_page.dart';
import 'package:hackathon/screens/home_page.dart';
import 'package:hackathon/screens/discover_page.dart';
import 'package:hackathon/screens/profile_page.dart';
import 'package:hackathon/screens/qr_code_page.dart';
import 'package:hackathon/screens/quest_page.dart';
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
          HomePage(),
          DiscoverPage(),
          QuestPage(),
          EventsPage(),
          QRCodePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        items: [
          BottomNavigationBarItem(
            title: Text(HomePage.pageTitle[currentLanguage]),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(DiscoverPage.pageTitle[currentLanguage]),
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            title: Text(QuestPage.pageTitle[currentLanguage]),
            icon: Icon(Icons.border_color),
          ),
          BottomNavigationBarItem(
            title: Text(EventsPage.pageTitle[currentLanguage]),
            icon: Icon(Icons.event),
          ),
          BottomNavigationBarItem(
            title: Text('QR code'),
            icon: Icon(Icons.settings_overscan),
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: onBottomNavigationTap,
      ),
    );
  }
}
