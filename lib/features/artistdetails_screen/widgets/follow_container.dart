import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class FollowContainer extends StatelessWidget {
  const FollowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 64.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Color(0xff312B36),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.secondaryColor,
                          AppColors.primaryColor,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text('Follow', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),),

                  ),
                ),
                SizedBox(width: 15.0),
                SvgPicture.asset(
                  'assets/app_icons/share.svg',
                  width: 20,
                  height: 20,
                )
                //share icon button
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/app_icons/shuffle.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 15.0),
                SvgPicture.asset(
                  'assets/app_icons/play_circle.svg',
                  width: 40,
                  height: 40,
                ),
              ],
            ),

          ],

        )

    );
  }
}
