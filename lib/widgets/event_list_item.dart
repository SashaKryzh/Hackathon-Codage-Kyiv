import 'package:flutter/material.dart';
import 'package:hackathon/modules/event.dart';

// TODO: make cool
class EventListItem extends StatelessWidget {
  final Event event;
  final void Function(Event) onTap;

  EventListItem({
    this.event,
    this.onTap,
  }) : assert(event != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(event.title),
      subtitle: Text(event.description + ' - ' + event.date.toString()),
      onTap: () => onTap(event),
    );
  }
}
