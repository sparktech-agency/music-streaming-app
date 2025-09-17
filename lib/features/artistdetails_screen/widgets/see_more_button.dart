import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/artistdetails_screen/controllers/artist_details_controller.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ArtistDetailsController controller = Get.put(ArtistDetailsController());
    return GestureDetector(
      onTap: () {
        controller.showAllSongs.value = true;
      },
      child: Container(
        height: 28,
        width: 84,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: AppColors.secondaryColor,
              width: 1,
            )
        ),
        alignment: Alignment.center,
        child: Text(
          'See More',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
