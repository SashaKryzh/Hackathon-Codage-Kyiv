class Place {
  String title;
  String description;
  double lat;
  double lng;

  Place({
    this.title,
    this.description,
    this.lat,
    this.lng,
  });

  static List<Place> places = [
    Place(
      title: 'Place',
      description: 'Description',
      lat: 46.45209,
      lng: 30.7337006,
    )
  ];
}
