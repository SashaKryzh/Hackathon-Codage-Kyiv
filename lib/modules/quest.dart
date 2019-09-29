import 'package:flutter/material.dart';
import 'package:hackathon/modules/list_item.dart';

class Quest implements ListItem {
  String title;
  String description;
  double percent;
  String image;

  Quest({
    this.title,
    this.description,
    this.percent,
    this.image,
  });

  static List<Quest> questsUA = [
    Quest(
      title: 'Одеський цар звірів',
      description: 'Сфотографувати 10 левів у Одесі.',
      percent: 0.1,
      image: 'assets/quests/1.jpg',
    ),
    Quest(
      title: 'Масоны в Одессе',
      description: 'Сфотографировать знаки масонов на зданиях (циркуль, маятник, полусфера, женское лицо с петлёй на шее).',
      percent: 0.9,
      image: 'assets/quests/2.png',
    ),
    Quest(
      title: 'Колодцы старой одессы',
      description: 'Сфотографировать 5 колодцев.',
      percent: 1,
      image: 'assets/quests/3.jpg',
    ),
    Quest(
      title: 'Украденные скульптуры',
      description: 'Сфотографировать скульптуры и фонтаны, бывшие ранее в резиденциях знати.',
      percent: 0.62,
      image: 'assets/quests/4.jpg',
    ),
    Quest(
      title: 'Лестница в море',
      description: 'Сфотографироваться на верхней и нижней ступенях Потёмкинской лестницы.',
      percent: 0.3,
      image: 'assets/quests/5.jpg',
    ),
    Quest(
      title: 'Одесса на плечах Атлантов',
      description: 'Сфотографировать 4 скульптуры Атлантов в Одессе.',
      percent: 1,
      image: 'assets/quests/6.jpg',
    ),
  ];

  static List<Quest> questsFr = [
    Quest(
      title: 'Le roi des animaux à Odessa',
      description: 'Prenez des photos de 10 lions à Odessa.',
      percent: 0.1,
      image: 'assets/quests/1.jpg',
    ),
    Quest(
      title: 'Des maçons à Odessa',
      description: 'Prenez des photos des signes de maçons sur les bâtiments (compas, pendule, hémisphère, visage de femme avec un nœud coulant autour du cou).',
      percent: 0.4,
      image: 'assets/quests/2.png',
    ),
    Quest(
      title: 'Les puits de la vieille Odessa',
      description: 'Prenez  des photos de 5 puits.',
      percent: 1,
      image: 'assets/quests/3.jpg',
    ),
    Quest(
      title: 'Sculptures volées',
      description: 'Prenez des photos de sculptures et de fontaines qui étaient volés de résidences de la noblesse.',
      percent: 0.79,
      image: 'assets/quests/4.jpg',
    ),
    Quest(
      title: 'L’escalier à la mer',
      description: 'Prenez des photos sur les marches supérieure et inférieure de l\'escalier Potemkin.',
      percent: 0.8,
      image: 'assets/quests/5.jpg',
    ),
    Quest(
      title: 'Odessa sur les épaules des Atlantes',
      description: 'Prenez des photos 4 sculptures d\'Atlantes à Odessa.',
      percent: 1,
      image: 'assets/quests/6.jpg',
    ),
  ];

  static var quests = [questsUA, questsFr];
}
