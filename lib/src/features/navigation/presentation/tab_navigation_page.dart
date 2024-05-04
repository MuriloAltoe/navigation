import 'package:flutter/material.dart';

class TabNavigationPage extends StatelessWidget {
  const TabNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabNavigation'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('Um')),
              Tab(child: Text('Dois')),
              Tab(child: Text('Tres')),
              Tab(child: Text('Quatro')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red.shade100,
              alignment: Alignment.center,
              child: const Text('Conteúdo Tab Um'),
            ),
            Container(
              color: Colors.green.shade100,
              alignment: Alignment.center,
              child: const Text('Conteúdo Tab Dois'),
            ),
            Container(
              color: Colors.blue.shade100,
              alignment: Alignment.center,
              child: const Text('Conteúdo Tab Tres'),
            ),
            Container(
              color: Colors.orange.shade100,
              alignment: Alignment.center,
              child: const Text('Conteúdo Tab Quatro'),
            ),
          ],
        ),
      ),
    );
  }
}
