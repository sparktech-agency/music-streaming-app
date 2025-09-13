import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart'; // Ensure AppColors is defined

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2f0f39),
              Color(0xFF2f0f39),
              AppColors.baseBackgroundColor
            ],
            stops: [0.0, 0.1, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'I am looking for',
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Icon(Icons.search_rounded, color: Colors.white54),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),


            Text(
              'Popular Artists',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Add spacing before the content

            // Sample horizontal scroll section (can be replaced with your actual content)
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Number of items to show (replace with dynamic data)
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 12.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/artist${index + 1}.jpg'), // Replace with your asset images
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
