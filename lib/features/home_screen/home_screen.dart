import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/bottom_navbar/bottom_navbar.dart';
import 'package:music_streaming_app/features/history_screen/history_view.dart';
import 'package:music_streaming_app/features/home_screen/home_view.dart';
import 'package:music_streaming_app/features/save_screen/save_view.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/features/bottom_navbar/controller/bottom_nav_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final BottomNavController controller = Get.put(BottomNavController());

    final List<Widget> pages = [
      const HomeView(),
      const SaveView(),
      const HistoryView(),
    ];

    return Scaffold(
      backgroundColor: AppColors.baseBackgroundColor,
      body: Column(
        children: [
          Obx(() {
            return Expanded(
              child: IndexedStack(
                index: controller.selectedIndex.value,
                children: pages,
              ),
            );
          }),
        ],
      ),

      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
