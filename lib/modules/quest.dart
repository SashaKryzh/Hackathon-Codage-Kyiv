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

  static List<Quest> questsUA = [
    Quest(
      title: 'Одеський цар звірів',
      description: 'Сфотографувати 10 левів у Одесі.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Масоны в Одессе',
      description: 'Сфотографировать знаки масонов на зданиях (циркуль, маятник, полусфера, женское лицо с петлёй на шее).',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Колодцы старой одессы',
      description: 'Сфотографировать 5 колодцев.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Украденные скульптуры',
      description: 'Сфотографировать скульптуры и фонтаны, бывшие ранее в резиденциях знати.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Лестница в море',
      description: 'Сфотографироваться на верхней и нижней ступенях Потёмкинской лестницы.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Одесса на плечах Атлантов',
      description: 'Сфотографировать 4 скульптуры Атлантов в Одессе.',
      percent: 1,
      icon: Icons.ac_unit,
    ),
  ];

  static List<Quest> questsFr = [
    Quest(
      title: 'Одеський цар звірів',
      description: 'Сфотографувати 10 левів у Одесі.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Масоны в Одессе',
      description: 'Сфотографировать знаки масонов на зданиях (циркуль, маятник, полусфера, женское лицо с петлёй на шее).',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Колодцы старой одессы',
      description: 'Сфотографировать 5 колодцев.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Украденные скульптуры',
      description: 'Сфотографировать скульптуры и фонтаны, бывшие ранее в резиденциях знати.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Лестница в море',
      description: 'Сфотографироваться на верхней и нижней ступенях Потёмкинской лестницы.',
      percent: 0.1,
      icon: Icons.ac_unit,
    ),
    Quest(
      title: 'Одесса на плечах Атлантов',
      description: 'Сфотографировать 4 скульптуры Атлантов в Одессе.',
      percent: 1,
      icon: Icons.ac_unit,
    ),
  ];

  static var quests = [questsUA, questsFr];
}
