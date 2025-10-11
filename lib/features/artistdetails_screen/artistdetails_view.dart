import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/data/songs_data.dart';
import 'package:music_streaming_app/features/artistdetails_screen/controllers/artist_details_controller.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/artist_header.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/playlist_card_view.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/see_more_button.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/song_card.dart';
import 'package:music_streaming_app/features/home_screen/widgets/headline_text.dart';

class ArtistDetailsView extends StatelessWidget {
  final String artistName;
  final String imageUrl;

  const ArtistDetailsView({super.key, required this.artistName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final List<Songs> songs = getSongs();
    final ArtistDetailsController controller = Get.put(ArtistDetailsController());

    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,
      body: Column(
        children: [

          ArtistHeader(artistName: artistName, imageUrl: imageUrl),
          SizedBox(height: 15),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [

                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: HeadlineText(mainText: 'Popular'),
                  ),
                  SizedBox(height: 15),

                  Obx(() {
                    final displaySongs = controller.showAllSongs.value ? songs : songs.take(4).toList();

                    return Column(
                      children: [
                        ...List.generate(displaySongs.length, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: SongCard(songs: displaySongs[index], index: index),
                          );
                        }),
                        SizedBox(height: 10),
                        if (!controller.showAllSongs.value && songs.length > 4)

                         SeeMoreButton(),
                        SizedBox(height: 20),
                        HeadlineText(mainText: 'Featured Playlists'),
                        SizedBox(height: 15),
                        PlaylistCardView(),
                        SizedBox(height: 20,)
                      ],
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
