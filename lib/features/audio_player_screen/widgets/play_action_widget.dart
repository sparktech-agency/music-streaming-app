import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/audio_player_screen/controller/audio_player_controller.dart';

class PlayActionWidget extends StatelessWidget {
  final String audioPath;
  const PlayActionWidget({super.key, required this.audioPath});

  @override
  Widget build(BuildContext context) {
    AudioPlayerController audioController = Get.put(AudioPlayerController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          'assets/app_icons/repeat.svg',
          width: 24,
          height: 24,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/app_icons/previous.svg',
              width: 32,
              height: 32,
            ),
            SizedBox(width: 10),
            Obx(() {
              return GestureDetector(
                onTap: () {
                  audioController.togglePlayPause(audioPath);
                },
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    gradient: AppColors.defaultGradient,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.secondaryColor.withAlpha(60),
                        blurRadius: 80,
                        spreadRadius: 20,
                      ),
                    ],
                  ),
                  child: Icon(
                    audioController.isPlaying.value ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              );
            }),
            SizedBox(width: 10),
            SvgPicture.asset(
              'assets/app_icons/after.svg',
              width: 32,
              height: 32,
            ),
          ],
        ),
        Obx(
            (){
             return GestureDetector(
               onTap: (){
                 audioController.toggleFavourite();
               },
               child: SvgPicture.asset(
                 audioController.isFavourite.value ? 'assets/app_icons/love_fill.svg' : 'assets/app_icons/love_blank.svg',
                 width: audioController.isFavourite.value ? 26.5 : 24,
                 height: audioController.isFavourite.value ? 26.5 : 24,
               ),


             );

            }

        )

      ],

    );
  }
}
