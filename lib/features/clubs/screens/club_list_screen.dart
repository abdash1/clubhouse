import 'package:flutter/material.dart';

class ClubListScreen extends StatelessWidget {
  const ClubListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyClubs = ['Photography', 'Robotics', 'Drama'];

    return Scaffold(
      appBar: AppBar(title: const Text('Clubs')),
      body: ListView.builder(
        itemCount: dummyClubs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dummyClubs[index]),
            trailing: ElevatedButton(
              onPressed: () {
                // TODO: Join club logic
              },
              child: const Text('Join'),
            ),
          );
        },
      ),
    );
  }
}
