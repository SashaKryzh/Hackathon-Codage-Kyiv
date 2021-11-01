import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/place.dart';

// TODO: make cool
class PlaceListItem extends StatelessWidget {
  final Place place;
  final void Function(Place) onTap;

  PlaceListItem({
    this.place,
    this.onTap,
  }) : assert(place != null);

  final description = [
    'Туди ж він потрапив з знищеного Першого християнського цвинтаря.',
    'Membres de l\'équipe: Sandra Zadorozhnaya, Evgeny Fedorich, Alexander Krijanovski'
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            place.image != null ? Image.asset(place.image) : Container(),
            ListTile(
              title: Text(
                place.title,
                style: theme.textTheme.headline6,
              ),
              subtitle: Text(
                place.shortDescription ?? description[currentLanguage],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      onTap: () => onTap(place),
    );
  }
}
