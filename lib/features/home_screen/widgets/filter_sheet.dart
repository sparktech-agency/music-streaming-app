import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/home_screen/controller/filter_controller.dart';

class FilterSheet extends StatelessWidget {
  const FilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FilterController());

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1C1524),
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      padding: const EdgeInsets.all(16).copyWith(bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 3,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Color(0xffE0E0E0),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text("Filter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 15),
          Divider(
            color: Color(0xff475569),
            thickness: 0.5,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Rating",
                style: TextStyle(
                    fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 15),

          // Rating options with Obx
          Obx(() {
            return Container(
              height: 40,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xff29232A),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ["Top Rated", "Trending", "New"].map((item) {
                  final isSelected = controller.selected.value == item;
                  return GestureDetector(
                    onTap: () => controller.select(item),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      decoration: BoxDecoration(
                        gradient: isSelected ? AppColors.defaultGradient : null,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        item,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.white,
                          fontWeight:
                          isSelected ? FontWeight.w500 : FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }),

          const SizedBox(height: 20),
          Divider(
            color: Color(0xff475569),
            thickness: 0.5,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => controller.reset(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Color(0xff58224b),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context, controller.selected.value);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      gradient: AppColors.defaultGradient,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
