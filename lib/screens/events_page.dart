import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/modules/event.dart';
import 'package:hackathon/widgets/event_list_item.dart';

class EventsPage extends StatelessWidget {
  static const pageTitle = ['Події', 'Des événements'];

  @override
  Widget build(BuildContext context) {
    final events = Event.events[currentLanguage];

    // TODO: implement navigation
    void onEventTap(Event event) {
      print('Tapped');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle[currentLanguage]),
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
