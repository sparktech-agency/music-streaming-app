import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2f0f39), Color(0xFF2f0f39), AppColors.baseBackgroundColor],
            stops: [0.0, 0.1, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),

      ),

    );
  }
}
