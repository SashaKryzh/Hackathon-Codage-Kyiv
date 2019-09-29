import 'package:flutter/material.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/main.dart';

const _rank = [
  'Рівень',
  '!',
];

const _events = [
  'Події',
  '!',
];

class StatsBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget statsBlock(String title, String data, Icon icon) {
      return Container(
        width: 90,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: icon,
            ),
            Text(title),
            Text(data),
          ],
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        statsBlock(
          '579',
          coinsName,
          Icon(Icons.monetization_on),
        ),
        statsBlock(
          '12',
          _rank[currentLanguage],
          Icon(Icons.arrow_upward),
        ),
        statsBlock(
          '3',
          _events[currentLanguage],
          Icon(Icons.event_available),
        ),
      ],
    );
  }
}
