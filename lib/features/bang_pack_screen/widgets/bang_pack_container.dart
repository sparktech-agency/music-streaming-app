import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/bang_pack_screen/controller/bang_pack_controller.dart';
import 'package:music_streaming_app/features/bang_pack_screen/widgets/payment_bottom_sheet.dart';

class BangPackContainer extends StatelessWidget {
  final int index;
  final String title;
  final String price;
  final String description;
  final String bangAmount;
  final String? tag;

  const BangPackContainer({super.key, required this.index, required this.title, required this.price, required this.description, required this.bangAmount,this.tag});

  @override
  Widget build(BuildContext context) {
    final BangPackController controller = Get.put(BangPackController());

    return GestureDetector(
      onTap: () {
        controller.selectIndex(index);
      },
      child: Obx((){
        bool isSelected = controller.selectedIndex.value == index;
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: isSelected
                ? LinearGradient(
              colors: [Color(0xff4f0d3b), AppColors.baseBackgroundColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )
                : null,
            color: isSelected ? null : Color(0xff312B36),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected ? Color(0xffF7009E) : Colors.transparent,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                      'assets/app_icons/bangr.svg'
                  ),
                  if (tag != null && tag!.isNotEmpty)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: AppColors.defaultGradient,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      tag!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),


              Divider(
                color: Color(0xff896E9C),
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),


              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),


              Row(
                children: [
                  SvgPicture.asset(
                      'assets/app_icons/bangs_count.svg'
                  ),
                  SizedBox(width: 5),
                  Text(
                    "$bangAmount Bangs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Description of the pack
              Text(
                "Get 250 Bangs to boost your chart climbing power. Each Bang costs \$50.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),

              // Buy Now Button
              GestureDetector(
                onTap: () {
                  // Implement later
                },
                child: GestureDetector(
                  onTap: () {
                    paymentBottomSheet(context);
                  },
                  child: Container(
                    width: 110,
                    height: 34,
                    decoration: BoxDecoration(
                      gradient:AppColors.defaultGradient,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        );
      })
    );
  }
}
