import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/bottom_navbar/bottom_navbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text('Home View'),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
