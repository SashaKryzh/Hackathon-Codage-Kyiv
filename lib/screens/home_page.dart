import 'package:flutter/material.dart';
import 'package:hackathon/modules/event.dart';
import 'package:hackathon/modules/list_item.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/modules/post.dart';
import 'package:hackathon/screens/places_detail_page.dart';
import 'package:hackathon/screens/post_detail_page.dart';
import 'package:hackathon/screens/routes_detail_page.dart';
import 'package:hackathon/widgets/event_list_item.dart';
import 'package:hackathon/widgets/place_list_item.dart';
import 'package:hackathon/modules/route.dart' as r;
import 'package:hackathon/widgets/post_list_item.dart';
import 'package:hackathon/widgets/route_list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = Post.posts;

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

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
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
