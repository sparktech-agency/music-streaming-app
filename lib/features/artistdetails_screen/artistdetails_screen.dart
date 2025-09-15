import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/artistdetails_screen/models/songs.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/artist_header.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/song_card.dart';
import 'package:music_streaming_app/features/home_screen/widgets/headline_text.dart';

class ArtistDetailsScreen extends StatelessWidget {
  final String artistName;
  final String imageUrl;

  const ArtistDetailsScreen({super.key, required this.artistName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    //Song List
    final List<Songs> songs = [

      Songs(
        songTitle: 'YEAH! by Usher (Official Habibi Remix)',
        listenersCount: '223478',
        imagePath: 'assets/images/song_image_1.png',
        graphPath: 'assets/app_icons/graph.svg',
        audioPath: 'assets/audio/YEAH! by Usher (Official Habibi Remix).mp3',
        bangIcon: 'assets/app_icons/bang.png',
        trendIcon: 'assets/app_icons/up.svg',
      ),
      Songs(
        songTitle: '2Am Vibes',
        listenersCount: '2238',
        imagePath: 'assets/images/song_image_2.png',
        graphPath: 'assets/app_icons/graph.svg',
        audioPath: 'assets/audio/YEAH! by Usher (Official Habibi Remix).mp3',
        bangIcon: 'assets/app_icons/bang.png',
        trendIcon: 'assets/app_icons/down.svg',
      ),
      Songs(
        songTitle: 'Lost in Translation',
        listenersCount: '10038',
        imagePath: 'assets/images/song_image_3.png',
        graphPath: 'assets/app_icons/graph.svg',
        audioPath: 'assets/audio/YEAH! by Usher (Official Habibi Remix).mp3',
        bangIcon: 'assets/app_icons/bang.png',
        trendIcon: 'assets/app_icons/up.svg',
      ),
      Songs(
        songTitle: 'Midnight Dreams',
        listenersCount: '2238',
        imagePath: 'assets/images/song_image_4.jpg',
        graphPath: 'assets/app_icons/graph.svg',
        audioPath: 'assets/audio/YEAH! by Usher (Official Habibi Remix).mp3',
        bangIcon: 'assets/app_icons/bang.png',
        trendIcon: 'assets/app_icons/down.svg',
      ),
      Songs(
        songTitle: '2Am Vibes',
        listenersCount: '2238',
        imagePath: 'assets/images/song_image_2.png',
        graphPath: 'assets/app_icons/graph.svg',
        audioPath: 'assets/audio/YEAH! by Usher (Official Habibi Remix).mp3',
        bangIcon: 'assets/app_icons/bang.png',
        trendIcon: 'assets/app_icons/up.svg',
      ),

    ];

    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,

      body: Column(

        children: [
          ArtistHeader(artistName: artistName, imageUrl: imageUrl),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: HeadlineText(mainText: 'Popular')
          ),
          SizedBox(height: 15),
           Expanded(
             child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    ...List.generate(songs.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: SongCard(songs: songs[index], index: index),
                      );
                    }),

                  ],

                ),

              ),
           ),
        ],
      ),

    );
  }
}
