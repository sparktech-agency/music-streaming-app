import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddFriendContainer extends StatelessWidget {
  const AddFriendContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                SvgPicture.asset(
                  'assets/app_icons/add_friend.svg',
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
