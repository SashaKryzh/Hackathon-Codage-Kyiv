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
    return GestureDetector(
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(event.image, height: 250, fit: BoxFit.fitWidth,),
            ListTile(
              title: Text(event.title),
              subtitle: Text(event.description),
              leading: Container(
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sep',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      '27',
                      style: TextStyle(fontSize: 27),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => onTap(event),
    );
  }
}
