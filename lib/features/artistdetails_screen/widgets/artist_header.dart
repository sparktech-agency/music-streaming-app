import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class ArtistHeader extends StatelessWidget {
  final String artistName;
  final String imageUrl;

  const ArtistHeader({super.key, required this.artistName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor,
            Color(0xff2e2235),
            AppColors.baseBackgroundColor

          ],
          stops: [0.0, 0.8, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [

          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/app_icons/share.svg',

                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(height: 10),
          Text(
            artistName,
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            '1600000 Listeners',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
