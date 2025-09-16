import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/home_screen/widgets/artist_card.dart';

class PopularArtistList extends StatelessWidget {
  const PopularArtistList({super.key});

  @override
  Widget build(BuildContext context) {


    final List<Map<String, String>> artists = [
      {
        'name': 'Karl Wolf',
        'imageUrl': 'assets/images/karl_wolf.jpg',
        'genre': 'Artist',
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
      height: 148,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: artists.length,
        itemBuilder: (context, index) {
          final artist = artists[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ArtistCard(
              name: artist['name']!,
              imageUrl: artist['imageUrl']!,
              genre: artist['genre']!,
            ),
          );
        },
      ),
    );
  }
}
