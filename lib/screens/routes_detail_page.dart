import 'package:flutter/material.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/modules/place.dart';

import 'package:hackathon/modules/route.dart' as r;
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

const _placesTitle = ['Місця'];

class RouteDetailPage extends StatelessWidget {
  static const String routeName = '/route-detail';
  
  @override
  Widget build(BuildContext context) {
    final route = r.Route.routes.first;
    final theme = Theme.of(context);

    Widget appBar() {
      return AppBar(
        title: Text(route.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: <Widget>[
          Image.asset(route.image),
          Container(
            height: 10,
          ),
          HorizontalPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(route.title, style: theme.textTheme.title),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(),
          HorizontalPadding(
            child: Text(route.description),
          ),
          Container(height: 20,),
          HorizontalPadding(child: BlockTitle(title: _placesTitle[currentLanguage],)),
        ],
      ),
    );
  }
}
