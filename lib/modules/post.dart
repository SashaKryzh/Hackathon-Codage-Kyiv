import 'package:flutter/material.dart';
import 'package:hackathon/modules/list_item.dart';

class Post implements ListItem {
  String title;
  String description;
  String shortDescription;
  String creator;
  String creationDate;
  String image;

  Post({
    this.title,
    this.description,
    this.shortDescription,
    this.creator,
    this.creationDate,
    this.image,
  });

  static List<Post> postsUA = [
    Post(
      title: 'Hackathon 27/29 sept - Итоги',
      shortDescription: 'Итоги Хакатон от Француского посольства в Украине.',
      image: 'assets/hackathon.jpg',
      creator: 'Франция',
      creationDate: '29/09/19'
    ),
    Post(
      title: 'Француская Весна',
      shortDescription: 'Итоги Хакатон от Француского посольства в Украине.',
      image: 'assets/french_spring.jpg',
    ),
    Post(
      title: 'Hackathon 27/29 sept - Итоги',
      shortDescription: 'Итоги Хакатон от Француского посольства в Украине.',
      image: 'assets/lords_of_the_sound.jpg',
    ),
  ];

  static List<Post> postsFr = [
    Post(
        title: 'Hackathon 27/29 sept - Итоги',
        shortDescription: 'Итоги Хакатон от Француского посольства в Украине.',
        image: 'assets/hackathon.jpg',
        creator: 'Франция',
        creationDate: '29/09/19'
    ),
    Post(
      title: 'Француская Весна',
      shortDescription: 'Итоги Хакатон от Француского посольства в Украине.',
      image: 'assets/french_spring.jpg',
    ),
    Post(
      title: 'Hackathon 27/29 sept - Итоги',
      shortDescription: 'Итоги Хакатон от Француского посольства в Украине.',
      image: 'assets/lords_of_the_sound.jpg',
    ),
  ];

  static var posts = [postsUA, postsFr];
}
