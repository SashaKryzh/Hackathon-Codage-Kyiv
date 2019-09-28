import 'package:flutter/material.dart';

class Achievement {
  String title;
  String description;
  IconData iconData;
  bool completed;

  Achievement({this.title, this.description, this.iconData, this.completed});

  static List<Achievement> achievements = [
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.headset,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.headset,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.headset,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.headset,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.headset,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.headset,
      completed: false,
    ),
  ];
}