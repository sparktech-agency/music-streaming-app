import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/playlistdetails_screen/widgets/addfriend_container.dart';

class PlaylistHeader extends StatelessWidget{
  final String playlistName;
  final String imageUrl;
  final int songCount;

  const PlaylistHeader ({super.key, required this.playlistName, required this.imageUrl, required this.songCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor,
            Color(0xff2e2235),
            AppColors.baseBackgroundColor

          ],
          stops: [0.0, 0.8, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playlistName,
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 5),
              Text(
                '$songCount songs',
                style: TextStyle(color: Colors.white, fontSize: 12),

              ),
          ]
          ),

          SizedBox(height: 10),
          AddFriendContainer(),





        ],
      ),
    );
  }
}
