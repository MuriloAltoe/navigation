import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Page'),
            Text('Content: $content'),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back to Home Page'),
            )
          ],
        ),
      ),
    );
  }
}
