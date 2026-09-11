import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeddingCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 133, 160),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 2),
              Text(
                'Wedding Organizer',
                style: GoogleFonts.sevillana(
                  fontSize: 32,
                  fontWeight: FontWeight(400),
                  color: Colors.white,
                ),
              ),
              Text(
                'Pre-wedding, Photo, Party',
                style: GoogleFonts.sevillana(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                child: Text(
                  'Our Services',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(flex: 3),
              Text(
                '345 Moo 1 Tasud Chiang Rai, Thailand',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ),
    );
  }
}
