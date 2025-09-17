import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/data/artists_data.dart';
import 'package:music_streaming_app/features/home_screen/widgets/artist_card.dart';

class PopularArtistView extends StatelessWidget {
  const PopularArtistView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Artist> artists = getArtists();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2f0f39),
              Color(0xFF2f0f39),
              AppColors.baseBackgroundColor,
            ],
            stops: [0.0, 0.1, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
                SizedBox(width: 5),
                Text(
                  'Popular Artists',
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
                ),

              ],
            ),
           SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 10,
                  children: List.generate(artists.length, (index) {
                    final artist = artists[index];
                    return ArtistCard(
                      name: artist.name,
                      imageUrl: artist.imageUrl,
                      genre: artist.genre,
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
