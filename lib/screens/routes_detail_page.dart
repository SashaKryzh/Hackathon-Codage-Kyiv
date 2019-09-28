import 'package:flutter/material.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/modules/place.dart';

import 'package:hackathon/modules/route.dart' as r;
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

const _routeTour = ['З гідом:', '',];
const _routeTourSelf = ['Почати самостійно', '',];

const _infoTitle = ['Інформація', '',];

const _placesTitle = ['Місця на маршруті', '',];

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

    Widget buyBlock() {
      return Column(
        children: <Widget>[
          FlatButton(
            child: Text(_routeTourSelf[currentLanguage]),
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(_routeTour[currentLanguage]),
              ),
              FlatButton(
                child: Text('250 coins'),
                onPressed: () {},
              ),
              Container(width: 10),
              RaisedButton(
                child: Text('300 грн'),
                onPressed: () {},
              ),
            ],
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
            child: buyBlock(),
          ),
          Divider(),
          HorizontalPadding(
            child: Text(route.description),
          ),
          Container(height: 20),
          HorizontalPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BlockTitle(
                  title: _infoTitle[currentLanguage],
                ),
                Text(route.duration),
              ],
            ),
          ),
          Container(height: 20),
          HorizontalPadding(
            child: BlockTitle(
              title: _placesTitle[currentLanguage],
            ),
          ),
          Column(
            children: route.places.map((i) {
              return ListTile(
                title: Text(i.title),
                leading: Image.asset(i.image),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
