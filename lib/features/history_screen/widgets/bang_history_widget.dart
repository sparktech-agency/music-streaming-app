import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/data/songs_data.dart';
import 'package:music_streaming_app/routes/app_routes.dart';


class BangHistoryWidget extends StatelessWidget {
  final Songs songs;
  final int index;
  const BangHistoryWidget({super.key, required this.songs, required this.index});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        Get.toNamed(AppRoutes.audioPlayerScreen, arguments: {
          'songTitle': songs.songTitle,
          'artistName': songs.artistName,
          'imageUrl': songs.imagePath,
          'audioPath': songs.audioPath,
        });

      },
      child: Container(
        //width: 335.0,
        width: double.infinity,
        height: 74.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Color(0xff29232A),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Color(0xff896E9C),
                            width: 1
                        )
                    ),
                    child: Text(
                      (index + 1) < 10
                          ? '0${index + 1}'
                          : '${index + 1}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      songs.imagePath,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        songs.songTitle.length > 18
                            ? "${songs.songTitle.substring(0, 18)}..."
                            : songs.songTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      Text(
                        songs.listenersCount,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ]
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                SvgPicture.asset(
                  'assets/app_icons/play_circle.svg',
                  width: 44,
                  height: 44,
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
