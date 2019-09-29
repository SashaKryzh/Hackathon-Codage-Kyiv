import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/list_item.dart';
import 'package:hackathon/modules/place.dart';
import 'package:hackathon/screens/places_detail_page.dart';
import 'package:hackathon/screens/routes_detail_page.dart';
import 'package:hackathon/widgets/place_list_item.dart';
import 'package:hackathon/modules/route.dart' as r;
import 'package:hackathon/widgets/route_list_item.dart';


class DiscoverPage extends StatefulWidget {
  static const pageTitle = ['Місця і Тури', ''];

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int _currentScreen = 0;

  void onScreenChange() {
    setState(() {
      _currentScreen = (_currentScreen + 1) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icons = [
      Icon(Icons.map),
      Icon(Icons.view_list),
    ];

    Widget appBar() {
      return AppBar(
        title: Text(DiscoverPage.pageTitle[currentLanguage]),
        leading: IconButton(
          icon: icons[_currentScreen],
          onPressed: onScreenChange,
        ),
      );
    }

    Widget body() {
      return IndexedStack(
        index: _currentScreen,
        children: <Widget>[
          DiscoverListView(),
          PlacesMapView(),
        ],
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }
}

class DiscoverListView extends StatelessWidget {
  final places = Place.places;
  final routes = r.Route.routes;

  @override
  Widget build(BuildContext context) {
    // TODO: make one specific place and route always on top
    var items = List<ListItem>.from(places[currentLanguage]);
    items.insertAll(1, List<ListItem>.from(routes[currentLanguage]));

    void onPlaceTap(Place place) {
      Navigator.pushNamed(
        context,
        PlaceDetailPage.routeName,
        arguments: PlaceDetailPage(
          place: place,
        ),
      );
    }

    void onRouteTap(r.Route route) {
      Navigator.pushNamed(
        context,
        RouteDetailPage.routeName,
        arguments: RouteDetailPage(),
      );
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        switch (item.runtimeType) {
          case Place:
            return PlaceListItem(
              place: item,
              onTap: onPlaceTap,
            );
          case r.Route:
            return RouteListItem(
              route: item,
              onTap: onRouteTap,
            );
          default:
            print('Something wrong, I can feel it.');
            return Container();
        }
      },
    );
  }
}

class PlacesMapView extends StatefulWidget {
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(46.45209, 30.7337006),
    zoom: 12.51,
  );

  @override
  _PlacesMapViewState createState() => _PlacesMapViewState();
}

class _PlacesMapViewState extends State<PlacesMapView> {
  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _markers;

//  var _images = [
//    'assets/images/Head_of_Minerva.jpg',
//  ];

  void onPlaceMarkerTap(Place tappedPlace) {
    Navigator.pushNamed(
      context,
      PlaceDetailPage.routeName,
      arguments: PlaceDetailPage(
        place: tappedPlace,
      ),
    );
  }

  void initMarkers() {
    _markers = Place.places[currentLanguage].map((i) {
      return Marker(
        markerId: MarkerId('1'),
        position: i.lng != null ? LatLng(i.lat, i.lng) : LatLng(46.4836981, 30.7362512),
        infoWindow: InfoWindow(
          title: i.title,
          snippet: i.description,
          onTap: () => onPlaceMarkerTap(i),
        ),
      );
    }).toSet();

//    for (var image in _images) {
////      BitmapDescriptor.fromAssetImage(
////              ImageConfiguration(size: Size(48, 48)), image)
////          .then((onValue) {
////        setState(() {
////          _markers.add(
////            Marker(
////              markerId: MarkerId('1'),
////              position: LatLng(46.4836981, 30.7362512),
////              infoWindow: InfoWindow(
////                anchor: Offset(1.0, 1.0),
////                title: 'Place',
////                snippet: 'Some place snippet',
////                onTap: () {},
////              ),
////              icon: onValue,
////            ),
////          );
////        });
////      });
////    }
  }

  void onMapCreated(GoogleMapController controller) {
    if (_controller.isCompleted == false) {
      _controller.complete(controller);
    }
  }

  var _currentMapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    initMarkers();
    return Stack(
      children: [
        GoogleMap(
          mapType: _currentMapType,
          myLocationEnabled: true,
          markers: _markers,
          initialCameraPosition: PlacesMapView._initialCameraPosition,
          onMapCreated: onMapCreated,
        ),
      ],
    );
  }
}
