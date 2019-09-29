import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/modules/post.dart';
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

const _text1 = [
  '27-29 вересня 2019 року в Києві, на базі UNIT Factory за підтримки Посольства Франції пройшов Hackathon Codage Kyiv.',
  "Le Hackathon Codage Kyiv s'est tenu les 27 et 29 septembre 2019 à Kiev, sur la base de l' UNIT Factory avec le soutien de l'Ambassade de France.",
];
const _text2 = [
  'У створенні інноваційного рішення для підняття культурного рівня та розвитку туризму в Одесі брали участь 5 команд. Складалися вони з студентів UNIT Factory і Одеського Національного Університету І.І. Мечникова.',
  "5 équipes ont participé à la création d'une solution innovante pour élever le niveau culturel et développer le tourisme à Odesa. Ils se composaient d'étudiants d'UNIT Factory et d'  Université  National d'Odessa I.I. Mechnikov.",
];
const _text3 = [
  'За підсумками конкурсу перше місце посіла команда "uZHAS". Учасники команди: Сандра Задорожна, Євген Федорич, Олександр Крижанівський, Анна Мудра, Анна Ткачук.',
  'À la suite de la compétition, la première place a été remportée par l’équipe "uZHAS". Membres de l\'équipe: Sandra Zadorozhnaya, Evgeny Fedorich, Alexander Krijanovski, Anna Mudra, Anna Tkachuk.'
];

const _text4 = [
  'Вітаємо переможців!',
  'Félicitations aux gagnants!',
];

const _comment = [
  'Молодці!',
  'Bravo!',
];

// TODO: make post likeable for the joke
class PostDetailPage extends StatelessWidget {
  static const String routeName = '/post-detail';

  final p = Post.posts[currentLanguage].first;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget appBar() {
      return AppBar(
        title: Text(p.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: <Widget>[
          Image.asset(p.image),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text(
//              p.title,
//              style: theme.textTheme.title,
//            ),
//          ),
          Container(
            height: 10,
          ),
          HorizontalPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(p.title, style: theme.textTheme.title),
                    Text(p.creator + ' - ' + p.creationDate),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(),
          HorizontalPadding(
            child: Text(_text1[currentLanguage]),
          ),
          Container(
            height: 20,
          ),
          HorizontalPadding(
            child: Text(_text2[currentLanguage]),
          ),
          Container(height: 20),
          HorizontalPadding(
            child: Text(_text3[currentLanguage]),
          ),
          Container(height: 10),
          HorizontalPadding(
            child: Text(
              _text4[currentLanguage],
              style: theme.textTheme.headline,
            ),
          ),
          Container(height: 20),
          Image.asset('assets/hackathon_finish.jpg'),
          Container(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                BlockTitle(title: reviews[currentLanguage]),
                Card(
                  child: ListTile(
                    title: Text(userName[currentLanguage]),
                    subtitle: Text(_comment[currentLanguage]),
                    leading: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/Anna.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
