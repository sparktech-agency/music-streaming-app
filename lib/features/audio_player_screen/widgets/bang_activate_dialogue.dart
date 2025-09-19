import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';


void bangActivateDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/app_logos/activate_logo.svg",),
                const SizedBox(height: 15),
                const Text(
                  "BANG ACTIVATED",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),
                const Text(
                  "This track just got a boost! Keep\nsupporting BANGr music.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 15),

                // Activate button
                GestureDetector(
                  onTap: () {
                    Get.back();
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
                      "Got It",
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
