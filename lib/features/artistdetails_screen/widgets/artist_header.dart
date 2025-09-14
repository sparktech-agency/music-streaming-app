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
          SizedBox(height: 40),

          //follow section start
          Container(
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

          ),
          //follow section end

        ],
      ),
    );
  }
}
