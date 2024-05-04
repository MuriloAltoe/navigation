import 'package:flutter/material.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navigation'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.adb),
                title: const Text('BottomNavigation'),
                subtitle: const Text('Navigate to BottomNavigation'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pushNamed('/bottom');
                },
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Drawer navigation'),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: const Text('Back to HomePage'),
            ),
          ],
        ),
      ),
    );
  }
}
