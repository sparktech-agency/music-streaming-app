import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/bottom_navbar/controller/bottom_nav_controller.dart';
import 'package:music_streaming_app/features/history_screen/history_view.dart';
import 'package:music_streaming_app/features/home_screen/home_view.dart';
import 'package:music_streaming_app/features/save_screen/save_view.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    final List<Widget> pages = [
      HomeView(),
      SaveView(),
      HistoryView(),
    ];

    return Obx(
          () => Scaffold(
            backgroundColor: AppColors.baseBackgroundColor,
            body: IndexedStack(
              index: controller.selectedIndex.value,
              children: pages,
            ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Color(0xFF1D1B25),
            ),
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
              onTap: controller.changeIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              unselectedItemColor: Color(0xFFCBD5E1),
              selectedItemColor: AppColors.secondaryColor,
              selectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/app_icons/home_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/app_icons/active_home.svg",
                    width: 24,
                    height: 24,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/app_icons/save_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/app_icons/active_save.svg",
                    width: 24,
                    height: 24,
                  ),
                  label: 'Save',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/app_icons/history_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/app_icons/active_history.svg",
                    width: 24,
                    height: 24,
                  ),
                  label: 'History',
                ),
              ],
            ),
          ),

      ),
    );
  }
}
