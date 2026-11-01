import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const PozzezzApp());
}

class PozzezzApp extends StatelessWidget {
  const PozzezzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pozzezz',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),

        // --- DRAFT PLACEHOLDERS ---
        // Replace these Scaffolds with your teammates' actual classes
        // once their files are merged into the project.
        '0': (context) => Scaffold(
          appBar: AppBar(title: const Text('Draft: Vegetable Pizza')),
          body: const Center(child: Text('Pending teammate upload...')),
        ),
        '1': (context) => Scaffold(
          appBar: AppBar(title: const Text('Draft: Cheese Pizza')),
          body: const Center(child: Text('Pending teammate upload...')),
        ),
        '2': (context) => Scaffold(
          appBar: AppBar(title: const Text('Draft: Fries')),
          body: const Center(child: Text('Pending teammate upload...')),
        ),
        '3': (context) => Scaffold(
          appBar: AppBar(title: const Text('Draft: Twitter')),
          body: const Center(child: Text('Pending teammate upload...')),
        ),
        '4': (context) => Scaffold(
          appBar: AppBar(title: const Text('Draft: Facebook')),
          body: const Center(child: Text('Pending teammate upload...')),
        ),
      },
    );
  }
}