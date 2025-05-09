import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login / Signup')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement signup
              },
              child: const Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
