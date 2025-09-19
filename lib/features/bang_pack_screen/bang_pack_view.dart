import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/data/bangpack_data.dart';
import 'package:music_streaming_app/features/bang_pack_screen/widgets/bang_pack_container.dart';
import 'package:music_streaming_app/features/home_screen/widgets/headline_text.dart';

class BangPackView extends StatelessWidget {
  const BangPackView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BangPack> bangPacks = getBangPacks();
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2f0f39), Color(0xFF2f0f39), AppColors.baseBackgroundColor],
            stops: [0.0, 0.1, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
                HeadlineText(mainText: 'Bang Packs')
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(bangPacks.length, (index) {
                      BangPack bangPack = bangPacks[index];
                      return Column(
                        children: [
                          BangPackContainer(
                            index: index,
                            title: bangPack.title,
                            price: bangPack.price,
                            description: bangPack.description,
                            bangAmount: bangPack.bangAmount,
                            tag: bangPack.tag,
                          ),
                          SizedBox(height: 8),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],

        )

      ),




    );
  }
}
