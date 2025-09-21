import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/controllers/bang_controller/bang_controller.dart';
import 'package:music_streaming_app/data/songs_data.dart';
import 'package:music_streaming_app/routes/app_routes.dart';



class SongCard extends StatelessWidget {
  final Songs songs;
  final int index;
  const SongCard({super.key, required this.songs, required this.index});


  @override
  Widget build(BuildContext context) {

    //updated functionality as per client requirement
    final BangController controller = Get.put(BangController());

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
        width: double.infinity,
        height: 74.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        decoration: BoxDecoration(
          gradient: index==0?
          LinearGradient(
            colors: [Color(0xff4f0d3b), AppColors.baseBackgroundColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ) : null,
          color: index==0?null:Color(0xff312B36),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: index==0?Color(0xffF7009E):Colors.transparent,
            width: 1,
          ),
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
                  songs.songTitle.length > 10
                      ? "${songs.songTitle.substring(0, 10)}..."
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SvgPicture.asset(
                  songs.graphPath,
                  width: 42,
                  height: 34,
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    // Call the handleBangClick method when the Bang button is pressed
                    controller.handleBangClick(index);
                  },
                  child: Image.asset(
                    songs.bangIcon,
                    width: 40,
                    height: 30,
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset(
                  index == 0 ? 'assets/app_icons/up.svg' : 'assets/app_icons/down.svg',
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
