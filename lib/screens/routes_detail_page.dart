import 'package:flutter/material.dart';
import 'package:hackathon/modules/place.dart';

import 'package:hackathon/modules/route.dart' as r;

class RouteDetailPage extends StatelessWidget {
  static const String routeName = '/route-detail';

  final r.Route route;

  RouteDetailPage({
    this.route,
  }) : assert(route != null);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return AppBar(
        title: Text(route.title),
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Text(route.description),
      ),
    );
  }
}
