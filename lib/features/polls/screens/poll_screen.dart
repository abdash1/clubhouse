import 'package:flutter/material.dart';

class PollScreen extends StatelessWidget {
  const PollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyPoll = {
      'question': 'Who should be next club president?',
      'options': ['Alice', 'Bob', 'Charlie'],
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Poll')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(dummyPoll['question']!, style: const TextStyle(fontSize: 18)),
          ),
          ...dummyPoll['options']!.map((option) {
            return ListTile(
              title: Text(option),
              trailing: ElevatedButton(
                onPressed: () {
                  // TODO: Vote logic
                },
                child: const Text('Vote'),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
