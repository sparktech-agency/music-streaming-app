import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/audio_player_screen/controller/audio_player_controller.dart';
import 'package:music_streaming_app/features/audio_player_screen/widgets/bang_up.dart';
import 'package:music_streaming_app/features/audio_player_screen/widgets/play_action_widget.dart';

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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    formatDuration(Duration(seconds: audioController.position.value.toInt())),
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(width: 2,),
                  Text('/', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(width: 2,),
                  Text(
                    formatDuration(Duration(seconds: audioController.duration.value.toInt())),
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            );
          }),

          // Audio slider
          Obx(() {
            return SizedBox(
              child: SliderTheme(
                data: SliderThemeData(
                  trackHeight: 8.0,
                  thumbColor: AppColors.primaryColor,
                  activeTrackColor: AppColors.primaryColor,
                  inactiveTrackColor: Color(0xff4F3D52),
                  overlayColor: AppColors.primaryColor.withValues(alpha: 51),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 10.0),
                ),
                child: Slider(
                  value: audioController.position.value,
                  min: 0.0,
                  max: audioController.duration.value > 0 ? audioController.duration.value : 1.0,
                  onChanged: (value) {
                    audioController.seekAudio(value);
                  },
                ),
              ),
            );
          }),

          SizedBox(height: 10),
          PlayActionWidget(audioPath: audioPath),
          SizedBox(height: 30),
          Column(
            children: [
              BangUp(),
              SizedBox(height: 10),
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

  // Function to format Duration to MM:SS
  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
