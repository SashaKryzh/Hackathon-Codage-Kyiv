import 'package:flutter/material.dart';
import 'package:hackathon/home.dart';
import 'package:hackathon/screens/places_detail_page.dart';
import 'package:hackathon/screens/post_detail_page.dart';
import 'package:hackathon/screens/profile_page.dart';
import 'package:hackathon/screens/quest_detail_page.dart';
import 'package:hackathon/screens/route_start.dart';
import 'package:hackathon/screens/routes_detail_page.dart';

void main() => runApp(MyApp());

Function() changeLanguage;
int currentLanguage = 1;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeLanguageMyApp() {
    setState(() {
      currentLanguage = (currentLanguage + 1) % 2;
    });
    print(currentLanguage);
  }

  @override
  Widget build(BuildContext context) {
    changeLanguage = changeLanguageMyApp;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PlaceDetailPage.routeName:
      PlaceDetailPage args = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => PlaceDetailPage(place: args.place),
      );

    case RouteDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => RouteDetailPage(),
      );

    case QuestDetailPage.routeName:
      QuestDetailPage args = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => QuestDetailPage(quest: args.quest),
      );

    case PostDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PostDetailPage(),
      );

    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePage(),
      );

    case RouteStart.routeName:
      return MaterialPageRoute(
        builder: (context) => RouteStart(),
      );

    default:
      return null;
  }
}
