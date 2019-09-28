import 'package:flutter/material.dart';

class BlockTitle extends StatelessWidget {
  final String title;

  BlockTitle({this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: theme.textTheme.title,
        ),
        Divider(
          thickness: 7,
          color: Colors.black,
        ),
      ],
    );
  }
}
