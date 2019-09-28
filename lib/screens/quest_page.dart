import 'package:flutter/material.dart';
import 'package:hackathon/modules/quest.dart';
import 'package:hackathon/screens/quest_detail_page.dart';
import 'package:hackathon/screens/routes_detail_page.dart';
import 'package:hackathon/widgets/quest_list_item.dart';
import 'package:hackathon/widgets/route_list_item.dart';
import 'package:hackathon/modules/route.dart' as r;

class QuestPage extends StatelessWidget {
  final quests = Quest.quests;

  @override
  Widget build(BuildContext context) {
    void onQuestTap(Quest quest) {
      Navigator.pushNamed(
        context,
        QuestDetailPage.routeName,
        arguments: QuestDetailPage(quest: quest),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Quests'),
      ),
      body: ListView.builder(
        itemCount: quests.length,
        itemBuilder: (context, index) {
          return QuestListItem(
            quest: quests[index],
            onTap: onQuestTap,
          );
        },
      ),
    );
  }
}