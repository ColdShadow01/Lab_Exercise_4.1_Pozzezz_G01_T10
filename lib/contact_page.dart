import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(
          'Contact Us',
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

              // Matching Page Heading (Bebas Neue, 40px, deepOrange)
              Text(
                'Get in Touch',
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 20),

              // Contact Info Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: const ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.deepOrange,
                        ),
                        title: Text(
                          'Store Address',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Jalan Datuk Mohd Musa, 94300 Kota Samarahan, Sarawak, Malaysia',
                        ),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: const ListTile(
                        leading: Icon(Icons.phone, color: Colors.deepOrange),
                        title: Text(
                          'Phone Number',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('+60 82 123 456'),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 15),
                      child: const ListTile(
                        leading: Icon(Icons.email, color: Colors.deepOrange),
                        title: Text(
                          'Email Address',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('info@pozzezz.com'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // OutlinedButton matching size and style from home_page.dart
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  'Back to Home',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
