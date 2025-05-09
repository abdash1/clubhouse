import 'package:flutter/material.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyEvents = ['Tech Talk', 'Photography Workshop', 'Drama Night'];

    return Scaffold(
      appBar: AppBar(title: const Text('Events')),
      body: ListView.builder(
        itemCount: dummyEvents.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dummyEvents[index]),
            trailing: ElevatedButton(
              onPressed: () {
                // TODO: RSVP logic
              },
              child: const Text('RSVP'),
            ),
          );
        },
      ),
    );
  }
}
