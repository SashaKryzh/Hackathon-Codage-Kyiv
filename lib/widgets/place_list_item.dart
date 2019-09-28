import 'package:flutter/material.dart';
import 'package:hackathon/modules/place.dart';

// TODO: make cool
class PlaceListItem extends StatelessWidget {
  final Place place;
  final void Function(Place) onTap;

  PlaceListItem({
    this.place,
    this.onTap,
  }) : assert(place != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(place.title),
      onTap: () => onTap(place),
    );
  }
}
