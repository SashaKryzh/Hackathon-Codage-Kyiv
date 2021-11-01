import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/event.dart';
import 'package:hackathon/modules/list_item.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/modules/post.dart';
import 'package:hackathon/screens/places_detail_page.dart';
import 'package:hackathon/screens/post_detail_page.dart';
import 'package:hackathon/screens/profile_page.dart';
import 'package:hackathon/screens/routes_detail_page.dart';
import 'package:hackathon/widgets/event_list_item.dart';
import 'package:hackathon/widgets/place_list_item.dart';
import 'package:hackathon/modules/route.dart' as r;
import 'package:hackathon/widgets/post_list_item.dart';
import 'package:hackathon/widgets/route_list_item.dart';
import 'package:hackathon/widgets/stats_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

const questProgress = [
  'Пройдено квестів',
  'Les questes passée',
];

class HomePage extends StatelessWidget {
  static const pageTitle = ['Головна', 'La page principale'];

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = Post.posts[currentLanguage];

    void onPlaceTap(Place place) {
      Navigator.pushNamed(
        context,
        PlaceDetailPage.routeName,
        arguments: PlaceDetailPage(
          place: place,
        ),
      );
    }

    void onRouteTap(r.Route route) {
      Navigator.pushNamed(
        context,
        RouteDetailPage.routeName,
        arguments: RouteDetailPage(),
      );
    }

    void onPostTap(Post post) {
      Navigator.pushNamed(
        context,
        PostDetailPage.routeName,
      );
    }

    void routeToProfile() {
      Navigator.pushNamed(context, ProfilePage.routeName);
    }

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle[currentLanguage]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: routeToProfile,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: <Widget>[
                  StatsBlock(),
                  Container(height: 15),
                  Text(
                    questProgress[currentLanguage],
                    style: theme.textTheme.headline5,
                  ),
                  Container(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 20,
                        animation: true,
                        lineHeight: 15.0,
                        animationDuration: 2000,
                        percent: 0.1,
                        center: Text("16.0%"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.greenAccent,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }

          final item = items[index - 1];
          switch (item.runtimeType) {
            case Place:
              return PlaceListItem(
                place: item,
                onTap: onPlaceTap,
              );
            case r.Route:
              return RouteListItem(
                route: item,
                onTap: onRouteTap,
              );
            case Post:
              return PostListItem(
                post: item,
                onTap: onPostTap,
              );
            default:
              print('Something wrong, I can feel it.');
              return Container();
          }
        },
      ),
    );
  }

  HomePage();
}
