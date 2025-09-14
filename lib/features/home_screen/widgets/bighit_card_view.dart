import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/home_screen/widgets/bighit_card.dart';

class BigHitCardView extends StatelessWidget {
  const BigHitCardView({super.key});

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
    return Column(
      children: artists.map((artist) {
        return Column(
          children: [
            BigHitCard(
              artistName: artist['name']!,
              imageUrl: artist['imageUrl']!,
              genre: artist['genre']!,
            ),
            SizedBox(height: 20),
          ],
        );
      }).toList(),
    );
  }
}
