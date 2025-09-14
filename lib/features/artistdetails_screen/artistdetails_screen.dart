import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/artist_header.dart';

class ArtistDetailsScreen extends StatelessWidget {
  final String artistName;
  final String imageUrl;

  const ArtistDetailsScreen({super.key, required this.artistName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,
      body: Column(
        children: [
          ArtistHeader(artistName: artistName, imageUrl: imageUrl),
        ],
      ),

    );
  }
}
