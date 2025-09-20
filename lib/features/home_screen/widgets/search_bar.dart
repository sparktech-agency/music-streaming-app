import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_streaming_app/features/home_screen/widgets/filter_bottom_sheet.dart';


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
          hintStyle: TextStyle(color: Colors.grey[700], fontSize: 14.0),
          prefixIcon: SvgPicture.asset(
            'assets/app_icons/search.svg',
            width: 20,
            height: 20,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              filterBottomSheet(context);
            },
            child: SvgPicture.asset(
              'assets/app_icons/filter.svg',
              width: 20,
              height: 20,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
