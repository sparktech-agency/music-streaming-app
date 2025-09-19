import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/audio_player_screen/widgets/bang_activate_dialogue.dart';
import 'package:music_streaming_app/routes/app_routes.dart';

void showBangUpDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Dialog(
          backgroundColor: const Color(0xFF312B36),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(
              color: Color(0xffCDB5F4),
              width: 1,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Get.back(),
                    ),
                    SizedBox(width: 48,),
                    Text("Bang Up", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

                  ]
                ),

                Image.asset("assets/images/rocket.png",),
                const SizedBox(height: 15),
                const Text(
                  "BANG YOUR TRACK",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),
                const Text(
                  "You have 5 free BANGS during Beta.\nEach BANG can only be used once per track.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 15),

                // Activate button
                GestureDetector(
                  onTap: () {
                    Get.back();
                    bangActivateDialog(context);

                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: AppColors.defaultGradient,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Activate BANGS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // View Packs button
            GestureDetector(
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.bangPackScreen);
              },
              child: Container(
                width: double.infinity,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff58224b),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "View BANGS Packs",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        ),
      );
    },
  );

}
