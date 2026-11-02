import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(
          'About Us',
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              letterSpacing: 2.0,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500',
                            height: 220,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.local_pizza,
                                  size: 100,
                                  color: Colors.orange,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Welcome to Pozzezz!',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 40,
                          color: Colors.deepOrange,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Pozzezz is a home-made pizza store. Every pizza is '
                        'hand-stretched, made with fresh ingredients and baked '
                        'to order, so you get great taste with fast delivery.',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Our mission is to make every bite special.',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (r) => false,
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  'Back to Home',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
