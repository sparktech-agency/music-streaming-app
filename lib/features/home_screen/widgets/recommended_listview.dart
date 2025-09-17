import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/home_screen/widgets/recommended_card.dart';

class RecommendedListview extends StatelessWidget {
  const RecommendedListview({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> artists = [
      {
        'name': 'Kristin Watson',
        'imageUrl': 'assets/images/watson.png',
        'genre': 'Hip Hop',
      },
      {
        'name': 'Nova Rain',
        'imageUrl': 'assets/images/nova_rain.png',
        'genre': 'Indie Pop',
      },
      {
        'name': 'Kristin Watson',
        'imageUrl': 'assets/images/Kristin_Watson.png',
        'genre': 'Hip Hop',
      },
      {
        'name': 'Ben Iwara',
        'imageUrl': 'assets/images/Ben_Iwara.jpg',
        'genre': 'Latin',
      },
    ];

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: artists.length,
        itemBuilder: (context, index) {
          final artist = artists[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: RecommendedCard(
              artistName: artist['name']!,
              imageUrl: artist['imageUrl']!,
              genre: artist['genre']!,
            ),
          );
        },
      ),
    );
  }
}
