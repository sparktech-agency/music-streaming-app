import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/bottom_navbar/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {

    final BottomNavController controller = Get.put(BottomNavController());
    return Obx(
        ()=> BottomNavigationBar(

          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF1A1A1A),
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          elevation: 10,
          selectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),



          items: const <BottomNavigationBarItem>[

                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/app_icons/home_icon.png'), size: 30),
                  label: 'Home',

                ),
                BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/app_icons/save_icon.png'), size: 30),
              label: 'Save',

                ),
                BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/app_icons/history_icon.png'), size: 30),
              label: 'History',

            ),


          ],



        )
    );
  }
}
