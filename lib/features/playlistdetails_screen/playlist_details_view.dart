import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/playlistdetails_screen/widgets/playlist_header.dart';

class PlaylistDetailsView extends StatelessWidget {
  final String playlistName;
  final String imageUrl;
  final int songCount;
  const PlaylistDetailsView({super.key, required this.playlistName, required this.imageUrl, required this.songCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,
      body: Column(

        children: [
          PlaylistHeader(playlistName: playlistName, imageUrl: imageUrl, songCount: songCount),
          SizedBox(height: 15),

        ],
      )
    );
  }
}
