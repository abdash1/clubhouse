import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyStats = {
      'Active Clubs': 5,
      'Events Joined': 3,
      'Your Role': 'Member',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView(
        children: dummyStats.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            trailing: Text(entry.value.toString()),
          );
        }).toList(),
      ),
    );
  }
}
