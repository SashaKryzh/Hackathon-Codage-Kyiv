import 'package:hackathon/modules/list_item.dart';
import 'package:hackathon/modules/place.dart';

class Route implements ListItem {
  String title;
  String description;
  String duration;
  List<Place> places;

  Route({
    this.title,
    this.description,
    this.duration,
    this.places,
  });

  static List<Route> routes = [
    Route(
      title: 'Route 1',
      description: 'Route description',
      duration: '3 hours',
      places: Place.places,
    ),
  ];