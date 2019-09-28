import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon/modules/achievement.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget blockTitle(String title) {
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
              achievementItem(as[0]),
              achievementItem(as[1]),
              achievementItem(as[2]),
            ],
          ),
        ],
      );
    }

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

    Widget questBlock(
        IconData icon, String title, String description, double progress) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 78),
          Container(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: theme.textTheme.title,
              ),
              Container(
                height: 3,
              ),
              Text(
                description,
                style: theme.textTheme.subtitle,
              ),
              Container(
                height: 10,
              ),
              LinearPercentIndicator(
                width: 300,
                animation: true,
                lineHeight: 15.0,
                animationDuration: 2000,
                percent: progress,
//                center: Text("90.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
              ),
            ],
          ),
        ],
      );
    }

    Widget questsBlock() {
      return Column(
        children: <Widget>[
          questBlock(Icons.high_quality, 'quest',
              'desldkjflsd flksd vdknf m3 34 t4', 0.4),
        ],
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
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            CircleAvatar(
              backgroundImage: ExactAssetImage('assets/Anna.jpg', ),
              radius: 80,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Аннушка',
                    style: theme.textTheme.title,
                  ),
                  Container(
                    child: Text(
                      'kdsjflak\nsdjfljsdfljasdflkjsadlfkjsldkjfsaldjkfsladkjfalsdjkflasdjflasdjfladsjk',
                      textAlign: TextAlign.center,
                    ),
                    width: 150,
                  ),
                ],
              ),
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                statsBlock(
                  'Coins',
                  '579',
                  Icon(Icons.monetization_on),
                ),
                statsBlock(
                  'Rank',
                  '12',
                  Icon(Icons.arrow_upward),
                ),
                statsBlock(
                  'Events',
                  '3',
                  Icon(Icons.event_available),
                ),
              ],
            ),
            Container(height: 20),
            blockTitle('Achievements'),
            achievementsBlock(),
            blockTitle('Quests'),
            questsBlock(),
          ],
        ),
      ),
    );
  }
}
