import 'package:flutter/material.dart';
import 'package:hackathon/modules/quest.dart';
import 'package:hackathon/modules/route.dart' as r;
import 'package:percent_indicator/percent_indicator.dart';

// TODO: make cool
class QuestListItem extends StatelessWidget {
  final Quest quest;
  final void Function(Quest) onTap;

  QuestListItem({
    this.quest,
    this.onTap,
  }) : assert(quest != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(child: Image.asset(quest.image), height: 70, width: 70),
          Container(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  quest.title,
                  style: theme.textTheme.headline6,
                ),
                Container(
                  height: 3,
                ),
                Text(
                  quest.description,
                  style: theme.textTheme.subtitle2,
                ),
                Container(
                  height: 10,
                ),
                LinearPercentIndicator(
                  width: 200,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: quest.percent,
//                center: Text("90.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.greenAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
