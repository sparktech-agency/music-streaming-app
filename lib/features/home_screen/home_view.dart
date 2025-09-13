import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/home_screen/widgets/artist_card.dart';
import 'package:music_streaming_app/features/home_screen/widgets/headline_text.dart';
import 'package:music_streaming_app/features/home_screen/widgets/popular_artist_list.dart';
import 'package:music_streaming_app/features/home_screen/widgets/search_bar.dart';

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
            SearchBarWidget(),
            SizedBox(height: 20),
            HeadlineText(mainText: 'Popular Artists', subText: 'See all'),
            SizedBox(height: 20),
            PopularArtistList(),
            SizedBox(height: 20),
            HeadlineText(mainText: 'Recommended for today', subText: 'See all'),
          ],
        ),
      ),
    );
  }
}
