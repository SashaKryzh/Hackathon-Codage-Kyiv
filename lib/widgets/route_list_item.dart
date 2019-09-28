import 'package:flutter/material.dart';
import 'package:hackathon/modules/route.dart' as r;

// TODO: make cool
class RouteListItem extends StatelessWidget {
  final r.Route route;
  final void Function(r.Route) onTap;

  RouteListItem({
    this.route,
    this.onTap,
  }) : assert(route != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(route.title),
      subtitle: Text(route.description),
      onTap: () => onTap(route),
    );
  }
}
