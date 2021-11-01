import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/achievement.dart';
import 'package:hackathon/modules/quest.dart';
import 'package:hackathon/widgets/quest_list_item.dart';
import 'package:hackathon/widgets/stats_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';

const _about = [
  'Франкофон со стажем.',
  'Francоphonne avec l\' expérience.',
];

const _achievement = [
  'Досягнення',
  'Les défis',
];

const _quest = [
  'Квести',
  'Les quests',
];

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile-page';

  static const pageTitle = [
    'Профіль',
    'Le profil',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget blockTitle(String title) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: theme.textTheme.headline6,
          ),
          Divider(
            thickness: 7,
            color: Colors.black,
          ),
        ],
      );
    }

    Widget achievementsBlock() {
      final as = Achievement.achievements;

      Widget achievementItem(Achievement a) {
        return SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(a.iconData),
              ),
              Text(a.title),
            ],
          ),
        );
      }

      return Table(
        children: [
          TableRow(
            children: [
              achievementItem(as[0]),
              achievementItem(as[1]),
              achievementItem(as[2]),
            ],
          ),
          TableRow(
            children: [
              achievementItem(as[3]),
              achievementItem(as[4]),
              achievementItem(as[5]),
            ],
          ),
        ],
      );
    }

//    Widget questBlock(Quest quest) {
//      return Row(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          Icon(icon, size: 78),
//          Container(width: 10),
//          Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                title,
//                style: theme.textTheme.headline6,
//              ),
//              Container(
//                height: 3,
//              ),
//              Text(
//                description,
//                style: theme.textTheme.subtitle2,
//              ),
//              Container(
//                height: 10,
//              ),
//              LinearPercentIndicator(
//                width: 300,
//                animation: true,
//                lineHeight: 15.0,
//                animationDuration: 2000,
//                percent: progress,
////                center: Text("90.0%"),
//                linearStrokeCap: LinearStrokeCap.roundAll,
//                progressColor: Colors.greenAccent,
//              ),
//            ],
//          ),
//        ],
//      );
//    }

    Widget questsBlock() {
      return Column(
        children: <Widget>[
          QuestListItem(quest: Quest.quests[currentLanguage][2]),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle[currentLanguage]),
        actions: <Widget>[
          IconButton(
            icon: currentLanguage == 0
                ? Image.asset('assets/ukraine_flag.png')
                : Image.asset('assets/frenche_flag.png'),
            onPressed: changeLanguage,
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/Anna.jpg'),
                  radius: 80,
                ),
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    userName[currentLanguage],
                    style: theme.textTheme.headline6,
                  ),
                  // TODO: change
                  Container(
                    child: Text(
                      _about[currentLanguage],
                      textAlign: TextAlign.center,
                    ),
                    width: 150,
                  ),
                ],
              ),
            ),
            Container(height: 20),
            StatsBlock(),
            Container(height: 20),
            blockTitle(_achievement[currentLanguage]),
            achievementsBlock(),
            blockTitle(_quest[currentLanguage]),
            questsBlock(),
          ],
        ),
      ),
    );
  }
}
