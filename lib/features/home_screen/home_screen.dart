import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/bottom_navbar/bottom_navbar.dart';
import 'package:music_streaming_app/features/home_screen/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      bottomNavigationBar: BottomNavbar(),
    );
  }
}
