import 'package:flutter/material.dart';
import 'package:hackathon/modules/post.dart';

class PostListItem extends StatelessWidget {
  final Post post;

  PostListItem({
    this.post,
  }) : assert(post != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(post.title),
        Text(post.description),
      ],
    );
  }
}
