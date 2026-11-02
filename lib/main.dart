import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'menu_page.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'social_web_page.dart'; // Import the social web page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pozzezz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,

        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Pozzezz'),
        '/menu': (context) => const MenuPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/twitter': (context) => const SocialWebPage(
          title: 'Twitter/X page',
          initialUrl: 'https://x.com',
        ),
        '/facebook': (context) => const SocialWebPage(
          title: 'Facebook page',
          initialUrl: 'https://facebook.com',
        ),
      },
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final String title;
  const PlaceholderPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          '$title\n(to be implemented by assigned team member)',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
