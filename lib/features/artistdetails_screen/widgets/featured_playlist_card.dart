import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/routes/app_routes.dart';

class FeaturedPlaylistCard extends StatelessWidget {
  final String playlistName;
  final String imageUrl;
  final int songCount;

  const FeaturedPlaylistCard({super.key, required this.playlistName, required this.imageUrl, required this.songCount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

              Get.toNamed(AppRoutes.playlistDetailsScreen, arguments: {
                'playlistName': playlistName,
                'imageUrl': imageUrl,
                'songCount': songCount,
              });

      },

      child: Container(
        width: 110,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: Color(0xff896E9C),
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
                imageUrl,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        ),
      ),
    );
  }
}
