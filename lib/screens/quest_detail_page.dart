import 'package:flutter/material.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/modules/quest.dart';

import 'package:hackathon/modules/route.dart' as r;

class QuestDetailPage extends StatelessWidget {
  static const String routeName = '/quest-detail';

  final Quest quest;

  QuestDetailPage({
    this.quest,
  }) : assert(quest != null);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return AppBar(
        title: Text(quest.title),
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Text(quest.description),
      ),
    );
  }
}
