import 'package:flutter/material.dart';

class Event {
  String title;
  String description;
  DateTime date;
  int price;
  int priceFromBonuses;
  String duration;
  String image;

  Event({
    this.title,
    this.description,
    this.date,
    this.price,
    this.priceFromBonuses,
    this.duration,
    this.image,
  });

  static List<Event> eventsUA = [
    Event(
      title: 'Курсы французского языка',
      description: 'Description',
      date: DateTime(2019, 10, 29),
      price: 500,
      priceFromBonuses: 250,
      duration: '5 часов',
      image: 'assets/events/french_course.png',
    ),
  ];

  static List<Event> eventsFr = [
    Event(
      title: 'Les cours de la langue française',
      description: 'Elle aurait été trouvée soit dans le Premier cimetière chrétien qui a été',
      date: DateTime(2019, 10, 29),
      price: 500,
      priceFromBonuses: 250,
      duration: '5 часов',
      image: 'assets/events/french_course.png',
    ),
  ];

  static var events = [eventsUA, eventsFr];
}
