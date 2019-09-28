import 'package:hackathon/modules/list_item.dart';

class Quest implements ListItem {
  String title;
  String description;

  Quest({this.title, this.description});

  static List<Quest> quests = [
    Quest(
      title: 'Quest 1',
      description: 'Description',
    ),
  ];
}
