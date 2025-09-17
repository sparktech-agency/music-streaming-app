import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/data/songs_data.dart';
import 'package:music_streaming_app/features/history_screen/widgets/bang_history_widget.dart';
import 'package:music_streaming_app/features/home_screen/widgets/headline_text.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

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
            HeadlineText(mainText: 'My Bangs'),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    ...List.generate(songs.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: BangHistoryWidget(songs: songs[index], index: index),
                      );
                    }),

                  ],

                ),

              ),
            )


            
          ],
        ),
        

      ),

    );
  }
}
