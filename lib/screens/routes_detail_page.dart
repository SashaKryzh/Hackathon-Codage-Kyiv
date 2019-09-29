import 'package:flutter/material.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/place.dart';

import 'package:hackathon/modules/route.dart' as r;
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

const _routeTour = ['З гідом:', 'Avec votre guide',];
const _routeTourSelf = ['Почати самостійно', 'Commencer indépandement',];

const _infoTitle = ['Інформація', '\'L\' information',];

const _placesTitle = ['Місця на маршруті', 'Des lieux sur le circuit',];

class RouteDetailPage extends StatelessWidget {
  static const String routeName = '/route-detail';

  @override
  Widget build(BuildContext context) {
    final route = r.Route.routes[currentLanguage].first;
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
    
    void startRoute() {
      Navigator.pushNamed(context, routeName);
    }

    Widget buyBlock() {
      return Column(
        children: <Widget>[
          RaisedButton(
            child: Text(_routeTourSelf[currentLanguage], style: TextStyle(color: Colors.white, fontSize: 25),),
            color: Colors.green,
            padding: EdgeInsets.all(20),
            onPressed: () {},
          ),
          Container(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(_routeTour[currentLanguage]),
              ),
              FlatButton(
                child: Text('250 ' + coinsName),
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
