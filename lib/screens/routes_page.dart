import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/screens/routes_detail_page.dart';
import 'package:hackathon/widgets/route_list_item.dart';
import 'package:hackathon/modules/route.dart' as r;

class RoutesPage extends StatelessWidget {
  final routes = r.Route.routes[currentLanguage];

  @override
  Widget build(BuildContext context) {
    void onRouteTap(r.Route route) {
      Navigator.pushNamed(
        context,
        RouteDetailPage.routeName,
        arguments: RouteDetailPage(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Routes'),
      ),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) {
          return RouteListItem(
            route: routes[index],
            onTap: onRouteTap,
          );
        },
      ),
    );
  }
}

