import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VIBE AND SEEK\nATHENS',
          style: TextStyle(
            fontSize: 38,
            fontFamily: 'CaesarDressing',
            color: Color(0xFF003366), // Text color for the main title
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent, // Transparent to not distract from the main content
      ),
      backgroundColor: const Color(0xFFF2EBD9), // Set the background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding for consistency
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align content at the top
          children: [
            const SizedBox(height: 40), // Space above buttons for the title
            _buildIconButton('assets/images/profile_icon.png', 'My Profile'),
            const SizedBox(height: 12), // Space between buttons
            _buildIconButton('assets/images/faces_icon.png', "Today's Vibe"),
            const SizedBox(height: 12),
            _buildIconButton('assets/images/games_icon.png', 'Challenges and \nGames'),
            const SizedBox(height: 40), // Space between buttons and human icons
            // Icons next to each other
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIcon('assets/images/human_1_icon.png', 140), // Adjusted size for human icons
                const SizedBox(width: 20),
                _buildIcon('assets/images/human_2_icon.png', 140),
              ],
            ),
            const Spacer(), // Pushes the icons to the bottom of the screen
            // Bottom icons (forum, home, maps)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBottomIcon('assets/images/forum_icon.png', () {
                  // Handle forum icon press
                }),
                _buildBottomIcon('assets/images/home_icon.png', () {
                  // Handle home icon press
                }),
                _buildBottomIcon('assets/images/maps_icon.png', () {
                  // Handle maps icon press
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(String assetPath, String label) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5), // Adjust margin for spacing
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12), // Padding for button thickness
      decoration: BoxDecoration(
        color: const Color(0xFF003366),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Shrinks the button width to content
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetPath,
            width: 32, // Adjust icon size to be visually appealing
            height: 32,
          ),
          const SizedBox(width: 10), // Increase space between icon and text
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFFD88D7F),
                fontWeight: FontWeight.bold,
                fontSize: 16, // Increase font size for better readability
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis, // Ensure text fits inside the button
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String assetPath, double size) {
    return GestureDetector(
      onTap: () {
        // Handle icon press
      },
      child: Image.asset(
        assetPath,
        width: size, // Adjusted size for larger human icons
        height: size,
      ),
    );
  }

  Widget _buildBottomIcon(String assetPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        assetPath,
        width: 30,
        height: 30,
      ),
    );
  }
}