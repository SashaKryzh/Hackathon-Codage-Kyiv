import 'package:flutter/material.dart';
import 'package:hackathon/modules/list_item.dart';

class Post implements ListItem {
  String title;
  String description;
  String image;

  Post({
    this.title,
    this.description,
    this.image,
  });

  static List<Post> posts = [
    Post(
      title: 'Titlelksdfj dl',
      description: 'sldkfjsldkfj ldslfmksdlfl smdlfmsdljflsdjfkjf fkj',
      image: 'assets/french_spring.jpg',
    ),
  ];
}
