import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/data/songs_data.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/song_card.dart';

class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Songs> songs = getSongs();
    return Scaffold(

      body: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2f0f39), Color(0xFF2f0f39), AppColors.baseBackgroundColor],
            stops: [0.0, 0.1, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),

        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/app_logos/bangr_chart.png',
                ),
              ],
            ),
            SizedBox(height: 5,),
            Expanded(
              child: SingleChildScrollView(

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
            )



          ],
        )

      ),

    );
  }
}
