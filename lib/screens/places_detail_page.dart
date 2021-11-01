import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

const grLegend = [
  'Давні і сиві міфи свідчать про те, що грифон є хранителем скарбів. І що ще стародавні царі ховали в їх статуї свої багатства. Хоч одеський гриффон і переїхав в куточок старої Одеси зі Старобазарний площі і не має відношення до царів, авантюристи в усі часи вірили, що хитрі купці щось та приховали. Звідси, пані та панове, вічні пробоїни в плечі гриффона. (Ох, я вкрай сподіваюся, що до Вашого приходу міська управа вже відремонтувала бідну тваринку).',
  'Les mythes anciens disent que le griffon est le gardien des trésors. Et que même les anciens rois cachaient leurs richesses dans leurs statues. Bien que le Griffon d’Odessa ait déménagé dans un coin de la vieille ville d’ Odessa depuis la place Starobazarnaya et n\'ait rien à voir avec les rois, mais les aventuriers ont toujours cru que des marchands rusés avaient caché quelque chose. Par conséquent, Mesdames et Messieurs,  ce pourquoi il y a des trous éternels dans l\'épaule du griffon qui ont été  fait par les chercheurs de  trésors. (Oh, j\'espère vraiment que d\'ici votre arrivée, le gouvernement de la ville aura déjà soigné le pauvre animal).'
];

// TODO: translate to Ukraine
class PlaceDetailPage extends StatefulWidget {
  static const String routeName = '/place-detail';

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

  static const cityLegendTitle = ['Міська легенда', 'Le mythe urbain'];

  final Place place;

  PlaceDetailPage({
    this.place,
  }) : assert(place != null);

  @override
  _PlaceDetailPageState createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
  Completer<GoogleMapController> _controller = Completer();

  void onMapCreated(GoogleMapController controller) {
    if (_controller.isCompleted == false) {
      _controller.complete(controller);
    }
  }

  final player = AudioCache();
  @override
  void initState() {
    player.load('audio.mp3');
    super.initState();
  }

  var _currentMapType = MapType.normal;

  bool isPlaying = false;
  void stopAudio() {
    a.stop();
    setState(() {
      isPlaying = false;
    });
  }

  AudioPlayer a;
  Future playAudio() async {
    a = await player.play('audio.mp3');
    setState(() {
      isPlaying = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var p = Place.places[currentLanguage].first;

    final CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(46.4904006, 30.7354182),
      zoom: 15.0,
    );

    var _markers = [
      Marker(
        markerId: MarkerId('666'),
        position: LatLng(46.4904006, 30.7354182),
//      infoWindow: InfoWindow(
//        title: i.title,
//        snippet: i.description,
//        onTap: () => onPlaceMarkerTap(i),
      ),
    ];

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
                Text(p.title, style: theme.textTheme.headline6),
                Text(p.creator),
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
              isPlaying == false
                  ? IconButton(
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: playAudio,
                    )
                  : IconButton(
                      icon: Icon(Icons.stop),
                      onPressed: stopAudio,
                    ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
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
          Image.asset('assets/places/gr/33.jpg'),
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
          HorizontalPadding(child: Text('${p.address}')),
          Container(
            height: 250,
            child: Card(
              child: GoogleMap(
                markers: _markers.toSet(),
                mapType: _currentMapType,
                myLocationButtonEnabled: false,
                initialCameraPosition: _cameraPosition,
                onMapCreated: onMapCreated,
              ),
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                BlockTitle(title: reviews[currentLanguage]),
                Card(
                  child: ListTile(
                    title: Text(userName[currentLanguage]),
                    subtitle: Text(commentOnPost[currentLanguage]),
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
