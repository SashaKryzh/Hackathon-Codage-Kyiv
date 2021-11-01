import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/screens/places_detail_page.dart';
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

class RouteStart extends StatefulWidget {
  static const String routeName = '/route-start';

  static const nextButton = ['Наступне', 'Le suivant'];

  @override
  _RouteStartState createState() => _RouteStartState();
}

class _RouteStartState extends State<RouteStart> {
  static const text1 = [
    'Туди ж він потрапив з знищеного Першого християнського цвинтаря, або з якогось санаторію, який до революції був приватної дачею.',
    'C\' est dans les années 1960-70 que cette sculpture représentant une créature mythique a été installée à son emplacement actuel.',
  ];
  static const text2 = [
    'Коли - то на місці Кіровського скверу був базар, чотири входи якого охороняли вісім грифонів. З восьми скульптур збереглася лише одна. Однак, краєзнавці стверджують, що встановити точну біографію цієї міфічної істоти вже не представляється можливим.',
    'Elle aurait été trouvée soit dans le Premier cimetière chrétien qui a été détruit soit d\' un sanatorium qui était une maison de campagne privée avant  la révolution. Jadis elle se trouvait auparavant dans le square Starobazarny (maintenant le square Kirovsky), lieu où se situait un grand marché dont quatre entrées étaient gardées par huit griffons. Sur les huit sculptures seulement une existe encore. Cependant, des ethnographes régionaux ont assurés qu\' il n\' est pas possible de fixer la biographie exacte de cet animal mythique.',
  ];
  static const text3 = [
    'Дана скульптура регулярно піддається актам вандалізму, натхненними міськими легендами і, потім, реставрується владою, внаслідок чого, відбиток мануфактури практично не проглядається.',
    'Cette sculpture fait régulièrement l\'objet d\'acte de vandalisme, qui sont inspirés par les légendes urbaines. Puis elle est restaurée par les corps de ville. C\' est pourquoi l\' empreinte de manufacture n\'est presque  pas remarquable.',
  ];

  static const zagadka = [
    'Ця істота, велично засідає на своєму п\'єдесталі, колись захищав один із входів у Старобазарний сквер. Зараз же, останній з 8-ми скульптур, он спрямує свій сумний та втомлений погляд на не менш поважних левів, вказуючих шлях до колонади. Що це за звір?',
    'Cet animal, majestueusement assise sur son socle, gardait autrefois l\'une des entrées de la place Starobazarny. Maintenant, dernière des 8 sculptures, il pose ses yeux tristes et fatigués sur des lions non moins magnifiques, montrant le chemin vers la colonnade. Quel genre d’animal est-ce? '
  ];

  static var var1 = ['Лев', 'Lion'];

  static var var2 = ['Грифон', 'Griffon'];

  static var var3 = ['Орел', 'Aigle'];

  int currentScreen = 0;

  Future nextScreen() async {
    if (currentScreen == 1) return;
    switch (await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(zagadka[currentLanguage]),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(var1[currentLanguage]),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text(var2[currentLanguage]),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(var3[currentLanguage]),
              ),
            ],
          );
        })) {
      case true:
        setState(() {
          currentScreen++;
        });
        break;
      case false:
        print(false);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget screen(Place p) {
      return ListView(
        children: <Widget>[
          Image.asset(p.image),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text(
//              p.title,
//              style: theme.textTheme.headline6,
//            ),
//          ),
          Container(
            height: 10,
          ),
          HorizontalPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(p.title ?? '', style: theme.textTheme.headline6),
                Text(p.creator ?? ''),
                Text(p.creationDate ?? ''),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.check_circle_outline),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.play_circle_outline),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text(
                RouteStart.nextButton[currentLanguage],
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              color: Colors.green,
              onPressed: nextScreen,
            ),
          ),
          Divider(),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: BlockTitle(title: 'Description'),
//          ),
          HorizontalPadding(
            child: Text(PlaceDetailPage.text1[currentLanguage]),
          ),
          Container(
            height: 20,
          ),
          currentScreen == 0
              ? Image.asset('assets/places/gr/33.jpg')
              : Container(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(PlaceDetailPage.cityLegendTitle[currentLanguage],
                          style: theme.textTheme.headline5),
                      Text(grLegend[currentLanguage]),
                    ],
                  ),
                ),
                elevation: 7,
              ),
            ),
          ),
          HorizontalPadding(
            child: Text(PlaceDetailPage.text2[currentLanguage]),
          ),
          Container(height: 20),
          Image.asset('assets/places/gr/32.jpg'),
          Container(height: 20),
          HorizontalPadding(
            child: Text(PlaceDetailPage.text3[currentLanguage]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          HorizontalPadding(child: Text('${p.address ?? ''}')),
          Container(height: 30),
          Card(
            elevation: 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/wikipedia.jpg'),
                  ),
                  Container(
                    width: 10,
                  ),
                  Text(
                    'Wikipedia',
                    style: theme.textTheme.headline5,
                  ),
                ],
              ),
            ),
          ),
          Container(height: 30),
        ],
      );
    }

    final screens = [
      screen(Place.places[currentLanguage].first),
      screen(Place.places[currentLanguage][2]),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Guide'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: screens[currentScreen],
    );
  }
}
