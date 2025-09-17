import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/audio_player_screen/controller/audio_player_controller.dart';

class AudioPlayerView extends StatelessWidget {
  final String songTitle;
  final String artistName;
  final String imageUrl;
  final String audioPath;

  const AudioPlayerView({
    super.key,
    required this.songTitle,
    required this.artistName,
    required this.imageUrl,
    required this.audioPath,
  });

  @override
  Widget build(BuildContext context) {
    final AudioPlayerController audioController = Get.put(AudioPlayerController());

    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15),
          Text(
            songTitle,
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            artistName,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 15),

          Obx(() {
            return SizedBox(
              child: Slider(
                value: audioController.position.value,
                min: 0.0,
                max: audioController.duration.value > 0 ? audioController.duration.value : 1.0,
                onChanged: (value) {
                  audioController.audioPlayer.seek(Duration(seconds: value.toInt()));
                },
                thumbColor: AppColors.primaryColor,
                activeColor: AppColors.primaryColor,
                inactiveColor: Colors.white38,
              )
            );
          }),

          SizedBox(height: 10),

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

          SizedBox(height: 10),


          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Bang Up", style: TextStyle(color: Colors.white)),
              ),

              Text(
                "Current Rank: 05",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              Text(
                "3/5 Bangs to move up",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
