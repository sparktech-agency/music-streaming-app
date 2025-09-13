import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String genre;

  const ArtistCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff896E9C),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                imageUrl,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
          ),
          Text(
            genre,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      );

  }
}
