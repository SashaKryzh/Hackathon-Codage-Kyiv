import 'package:flutter/material.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/modules/post.dart';

// TODO: make cool
class PostListItem extends StatelessWidget {
  final Post post;
  final void Function(Post) onTap;

  PostListItem({
    this.post,
    this.onTap,
  }) : assert(post != null);

  final description = 'Туди ж він потрапив з знищеного Першого християнського цвинтаря.';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            post.image != null
                ? Image.asset(post.image)
                : Container(),
            ListTile(
              title: Text(post.title, style: theme.textTheme.title,),
              subtitle: Text(post.shortDescription ?? description, maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
          ],
        ),
      ),
      onTap: () => onTap(post),
    );
  }
}
