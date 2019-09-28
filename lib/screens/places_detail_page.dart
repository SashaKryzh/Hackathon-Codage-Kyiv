import 'package:flutter/material.dart';
import 'package:hackathon/modules/place.dart';

class PlaceDetailPage extends StatelessWidget {
  static const String routeName = '/place-detail';

  final Place place;

  PlaceDetailPage({
    this.place,
  }) : assert(place != null);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return AppBar(
        title: Text(place.title),
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Text(place.description),
      ),
    );
  }
}
