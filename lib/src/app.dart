import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation/src/features/navigation/presentation/home_page.dart';
import 'package:navigation/src/features/navigation/presentation/tab_navigation_page.dart';

import 'features/navigation/presentation/bottom_navigation_page.dart';
import 'features/navigation/presentation/drawer_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.deepOrange,
        textTheme: GoogleFonts.righteousTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/tabs': (context) => const TabNavigationPage(),
        '/bottom': (context) => const BottomNavigationPage(),
        '/drawer': (context) => const DrawerNavigation(),
      },
    );
  }
}
