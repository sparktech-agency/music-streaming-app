import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/audio_player_screen/widgets/bang_up_dialogue.dart';


class BangUp extends StatelessWidget {
  const BangUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //dialogueBox need
        showBangUpDialog(context);
        //Get.toNamed(AppRoutes.bangPackScreen);

      },
      child: Container(
        height: 48.0,
        width: 114.0,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          gradient: AppColors.defaultGradient,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              'assets/app_icons/bang.png',
            ),
            Text(
              "Bang Up",
              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
