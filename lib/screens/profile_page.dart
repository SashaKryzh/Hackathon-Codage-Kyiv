import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget blockTitle(String title) {
      return Column(

      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 150,
            ),
            Text(
              'Аннушка',
              style: theme.textTheme.title,
            ),
            blockTitle('Achivments'),
          ],
        ),
      ),
    );
  }
}
