import 'package:hackathon/modules/place.dart';

class Route {
  String title;
  String description;
  List<Place> places;

  Route({
    this.title,
    this.description,
    this.places,
  });

  static List<Route> routes = [
    Route(
      title: 'Route 1',
      description: 'Route description',
      places: Place.places,
    ),
  ];
}
