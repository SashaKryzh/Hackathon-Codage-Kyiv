import 'package:flutter/material.dart';
import 'package:hackathon/modules/event.dart';
import 'package:hackathon/widgets/event_list_item.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final events = Event.events;

    // TODO: implement navigation
    void onEventTap(Event event) {
      print('Tapped');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final item = events[index];

          return EventListItem(
            event: item,
            onTap: onEventTap,
          );
        },
      ),
    );
  }
}
