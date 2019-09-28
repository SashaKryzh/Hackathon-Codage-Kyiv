import 'package:flutter/material.dart';
import 'package:hackathon/home.dart';
import 'package:hackathon/screens/places_detail_page.dart';
import 'package:hackathon/screens/routes_detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      RouteDetailPage args = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => RouteDetailPage(route: args.route),
      );

    default:
      return null;
  }
}
