import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/bottom_navbar/controller/bottom_nav_controller.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    return Obx(
          () => Container(
        height: 90,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Color(0xFF1D1B25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => controller.changeIndex(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    controller.selectedIndex.value == 0
                        ? 'assets/app_icons/active_home.svg'
                        : 'assets/app_icons/home_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: controller.selectedIndex.value == 0
                          ? AppColors.secondaryColor
                          : const Color(0xFFCBD5E1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => controller.changeIndex(1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    controller.selectedIndex.value == 1
                        ? 'assets/app_icons/active_save.svg'
                        : 'assets/app_icons/save_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Save',
                    style: TextStyle(
                      color: controller.selectedIndex.value == 1
                          ? AppColors.secondaryColor
                          : const Color(0xFFCBD5E1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => controller.changeIndex(2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    controller.selectedIndex.value == 2
                        ? 'assets/app_icons/active_history.svg'
                        : 'assets/app_icons/history_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'History',
                    style: TextStyle(
                      color: controller.selectedIndex.value == 2
                          ? AppColors.secondaryColor
                          : const Color(0xFFCBD5E1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
