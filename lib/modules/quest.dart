import 'package:flutter/material.dart';
import 'package:hackathon/modules/list_item.dart';

class Quest implements ListItem {
  String title;
  String description;
  double percent;
  IconData icon;

  Quest({
    this.title,
    this.description,
    this.percent,
    this.icon,
  });

  static List<Quest> quests = [
    Quest(
      title: 'Одеський цар звірів',
      description: 'Сфотографувати 10 левів у Одесі.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Следопыт',
      description: 'Посетить все места.',
      percent: 1,
      icon: Icons.ac_unit,
    ),
  ];
}
