import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/controllers/bang_controller/bang_controller.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/song_card.dart';
import 'package:music_streaming_app/features/playlistdetails_screen/widgets/playlist_header.dart';

class PlaylistDetailsView extends StatelessWidget {
  final String playlistName;
  final String imageUrl;
  final int songCount;
  const PlaylistDetailsView({super.key, required this.playlistName, required this.imageUrl, required this.songCount});

  @override
  Widget build(BuildContext context) {
    //final List<Songs> songs = getSongs();
    //updated controller
    final BangController controller = Get.put(BangController());
    return Scaffold(

      backgroundColor: AppColors.baseBackgroundColor,
      body: Column(

        children: [
          PlaylistHeader(playlistName: playlistName, imageUrl: imageUrl, songCount: songCount),
                SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/app_logos/bangr_chart.png',

                            )
                          ],
                        ),
                        SizedBox(height: 5,),

                        // Observe songs and update UI reactively
                        Obx(() {
                          return Column(
                            children: List.generate(controller.songs.length, (index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: SongCard(songs: controller.songs[index], index: index),
                              );
                            }),
                          );
                        }),

                        /*...List.generate(songs.length, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: SongCard(songs: songs[index], index: index),
                          );
                        }),

                         */

                      ],

                    ),

                  ),

                ),

        ],
      )
    );
  }
}
