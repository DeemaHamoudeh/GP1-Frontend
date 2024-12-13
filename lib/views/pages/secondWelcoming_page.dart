import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'thirdWelcoming_page.dart';
import 'firstWelcoming_page.dart';

class SecondWelcomingPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Container for the image
          Container(
            height: MediaQuery.of(context).size.height *
                0.6, // 60% of the screen height
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/manage.png'),
                fit: BoxFit.fill, // Ensures the image covers the container
              ),
            ),
          ),

          // Text below the image
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Effortlessly manage your products and track orders in one place!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Circle indicators for pages
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First circle (filled)
                Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey, // Filled color for the active page
                  ),
                ),

                // Second circle (unfilled)
                Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal, // Grey for inactive pages
                  ),
                ),

                // Third circle (unfilled)
                Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey, // Grey for inactive pages
                  ),
                ),
              ],
            ),
          ),

          // Buttons for navigation
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Skip Button (as plain text)
                GestureDetector(
                  onTap: () {
                    // Navigate to the last welcoming page or home
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),

                // Next Button (circular with arrow icon)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FirstWelcomingPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor:
                        Color(0xFF33B5AB), // Keep the same or use a gradient
                    elevation: 5,
                  ),
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
