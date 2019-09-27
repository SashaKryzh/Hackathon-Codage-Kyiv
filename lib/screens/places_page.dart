import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlacesPage extends StatefulWidget {
  @override
  _PlacesPageState createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
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
        title: Text('Places'),
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
          PlacesListView(),
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

class PlacesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('List'));
  }
}

class PlacesMapView extends StatefulWidget {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  _PlacesMapViewState createState() => _PlacesMapViewState();
}

class _PlacesMapViewState extends State<PlacesMapView> {
  Completer<GoogleMapController> _controller = Completer();

  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  var _currentMapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapType: _currentMapType,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          initialCameraPosition: PlacesMapView._kGooglePlex,
          onMapCreated: onMapCreated,
        ),
      ],
    );
  }
}
