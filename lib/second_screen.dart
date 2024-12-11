import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EBD9), // Custom beige color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // The existing "VIBE AND SEEK" text
            const Text(
              'VIBE AND SEEK\nATHENS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'CaesarDressing',
                color: Color(0xFF003366), // Text color for the main title
              ),
            ),
            const SizedBox(height: 20), // Space between the title and the new text
            // New text with the updated color
            const Text(
              'Experience the Athens that suits you\nFind the vibe that expresses you!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22, // Adjust the size as needed
                fontFamily: 'Finlandica',
                color: Color(0xFF003366), // Updated text color
              ),
            ),
            const SizedBox(height: 40), // Space between the text and the button
            // "Get Started" button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login'); // Navigate to the LoginScreen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD88D7F), // Button background color
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 38, // Adjust size as needed
                    color: Color(0xFF003366), // Text color for the button
                    fontFamily: 'CaesarDressing', // Use the custom font
                    fontWeight: FontWeight.bold, // Bold text for emphasis
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
