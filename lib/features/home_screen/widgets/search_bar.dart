import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(18.0),
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xff1D1B25),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(

          hintText: 'I am looking for',
          hintStyle: TextStyle(color: Color(0xffE6E6E6), fontSize: 14.0),
          prefixIcon: Image.asset(
            'assets/app_icons/search_icon.png',
            width: 20,
            height: 20,
          ),
          suffixIcon: Image.asset(
            'assets/app_icons/filter_icon.png',
            width: 20,
            height: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
