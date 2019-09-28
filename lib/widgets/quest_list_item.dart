import 'package:flutter/material.dart';
import 'package:hackathon/modules/quest.dart';
import 'package:hackathon/modules/route.dart' as r;

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
    return ListTile(
      title: Text(quest.title),
      subtitle: Text(quest.description),
      onTap: () => onTap(quest),
    );
  }
}
