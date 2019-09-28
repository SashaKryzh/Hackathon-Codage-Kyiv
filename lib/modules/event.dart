class Event {
  String title;
  String description;
  DateTime date;

  Event({
    this.title,
    this.description,
    this.date,
  });

  static List<Event> events = [
    Event(
      title: 'Event 1',
      description: 'Description',
      date: DateTime(2019, 10, 29),
    ),
  ];
}
