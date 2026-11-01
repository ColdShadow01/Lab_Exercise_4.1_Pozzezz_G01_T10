import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(
            title,
            style: GoogleFonts.lobster(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: 2.0,
              ),
            ),
        ),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              Text(
                'Welcome to Pozzezz! Made from Home',
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400',
                height: 250,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.local_pizza, size: 100, color: Colors.orange),
              ),
              const SizedBox(height: 40),

              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/menu'),
                style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
                child: const Text('View Menu', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 15),

              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
                child: const Text('About Us', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 15),
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/contact'),
                style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
                child: const Text('Contact Info', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 40),

              const Text('Follow us:'),
              const SizedBox(height: 10),
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Text('𝕏', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.pushNamed(context, '/twitter'),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.facebook),
                    color: Colors.blue,
                    iconSize: 36,
                    onPressed: () => Navigator.pushNamed(context, '/facebook'),
                  ),
                ],
              ),
              const SizedBox(height: 40),

            ],
          ),
        ),
      ),
    );
  }
}