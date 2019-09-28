import 'package:hackathon/modules/list_item.dart';

class Place implements ListItem {
  String title;
  String description;
  String shortDescription;
  String address; //
  String creationDate;
  String creator;
  double lat;
  double lng;

  Place({
    this.title,
    this.description,
    this.shortDescription,
    this.address,
    this.creationDate,
    this.creator,
    this.lat,
    this.lng,
  })  : assert(title != null),
        assert(shortDescription != null),
        assert(address != null);

  static List<Place> places = [];
}
