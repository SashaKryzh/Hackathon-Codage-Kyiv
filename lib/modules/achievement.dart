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
      iconData: Icons.bug_report,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.audiotrack,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.compare,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.sentiment_satisfied,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.public,
      completed: false,
    ),
    Achievement(
      title: 'Title',
      description: 'Description',
      iconData: Icons.queue_music,
      completed: false,
    ),
  ];
}