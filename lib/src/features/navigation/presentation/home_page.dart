import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:navigation/src/features/navigation/presentation/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () async {
                  String response = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const SecondPage(content: 'Content SeconPage'),
                    ),
                  );
                  log('Response: $response');
                },
                child: const Text('Go to Second Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/tabs');
                },
                child: const Text('Go to Tab Navigation Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bottom');
                },
                child: const Text('Go to Bottom Navigation Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/drawer');
                },
                child: const Text('Go to Drawer Navigation Page'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Go FAB Navigation Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
