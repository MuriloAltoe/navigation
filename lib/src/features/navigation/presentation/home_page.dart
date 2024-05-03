import 'package:flutter/material.dart';

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
                onPressed: () {},
                child: const Text('Go to Second Page'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Go to Tab Navigation Page'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Go to Bottom Navigation Page'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Go to Drawer navigation Page'),
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
