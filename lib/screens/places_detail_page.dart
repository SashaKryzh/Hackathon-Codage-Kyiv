import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon/consts.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/widgets/block_title.dart';
import 'package:hackathon/widgets/horizontal_padding.dart';

const _grLegend = ['Давние и седые мифы гласят о том, что грифон является хранителем сокровищ. И что еще древние цари прятали в их статуи свои богатства. Хоть одесский гриффон и переехал в уголок старой Одессы со Старобазарной площади и не имеет отношения к царям, авантюристы во все времена верили, что хитрые купцы что-то да припрятали. Отсюда, дамы и господа, вечные пробоины в плече гриффона. (Ох, я крайне надеюсь, что к Вашему приходу городская управа уже отремонтировала бедную зверюшку).', ''];

// TODO: translate to Ukraine
class PlaceDetailPage extends StatelessWidget {
  static const String routeName = '/place-detail';

  Completer<GoogleMapController> _controller = Completer();

  void onMapCreated(GoogleMapController controller) {
    if (_controller.isCompleted == false) {
      _controller.complete(controller);
    }
  }

  var _currentMapType = MapType.normal;

  final Place place;

  PlaceDetailPage({
    this.place,
  }) : assert(place != null);

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
//              style: theme.textTheme.title,
//            ),
//          ),
          Container(
            height: 10,
          ),
          HorizontalPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(p.title, style: theme.textTheme.title),
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
          Divider(),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: BlockTitle(title: 'Description'),
//          ),
          HorizontalPadding(
            child: Text(
                'Скульптура мифического животного была перенесена в этот сквер в 1960-70-х годах из Старобазарного (ныне Кировского) сквера. Туда же он попал либо с уничтоженного Первого христианского кладбища, либо из какого-то санатория, который до революции был частной дачей.'),
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
                      Text('Городская легенда!',
                          style: theme.textTheme.headline),
                      Text(_grLegend[currentLanguage]),
                    ],
                  ),
                ),
                elevation: 7,
              ),
            ),
          ),
          HorizontalPadding(
            child: Text(
                'Когда - то на месте Кировского сквера был базар, четыре входа которого охраняли восемь грифонов. Из восьми скульптур сохранилась лишь одна. Однако, краеведы утверждают, что установить точную биографию этого мифического существа уже не представляется возможным.'),
          ),
          Container(height: 20),
          Image.asset('assets/places/gr/32.jpg'),
          Container(height: 20),
          HorizontalPadding(
            child: Text(
                'Данная скульптура регулярно подвергается актам вандализма, вдохновленными городскими легендами и, затем, реставрируется властями, вследствии чего, оттиск мануфактуры практически не просматривается.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          HorizontalPadding(child: Text('Місцезнаходження: ${p.address}')),
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
                    style: theme.textTheme.headline,
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
