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
    final theme = Theme.of(context);

    return GestureDetector(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            route.image != null ? Image.asset(route.image) : Container(),
            ListTile(
              title: Text(
                route.title,
                style: theme.textTheme.headline6,
              ),
              subtitle: Text(
                route.shortDescription ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      onTap: () => onTap(route),
    );
  }
}
