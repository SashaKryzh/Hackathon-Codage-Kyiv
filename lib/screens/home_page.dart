import 'package:flutter/material.dart';
import 'package:hackathon/modules/event.dart';
import 'package:hackathon/widgets/event_list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
