import 'package:flutter/material.dart';

class Event {
  String title;
  String description;
  DateTime date;
  int price;
  int priceFromBonuses;
  String duration;
  Image image;

  Event({
    this.title,
    this.description,
    this.date,
    this.price,
    this.priceFromBonuses,
    this.duration,
    this.image,
  });

  static List<Event> events = [
    Event(
      title: 'Курсы французского языка',
      description: 'Description',
      date: DateTime(2019, 10, 29),
      price: 500,
      priceFromBonuses: 250,
      duration: '5 часов',
      image: null,
    ),
  ];
}
