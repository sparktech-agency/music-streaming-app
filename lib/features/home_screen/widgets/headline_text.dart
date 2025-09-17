import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadlineText extends StatelessWidget {
  final String mainText;
  final String? subText;
  final String? routeName;
  const HeadlineText({super.key, required this.mainText, this.subText, this.routeName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: (){
            if(routeName!=null){
              Get.toNamed(routeName!);
            }

          },
          child: Text(
          subText??'',
          style: TextStyle(
          color: Color(0xffAD00FF),
          fontSize: 14, fontWeight: FontWeight.w500,
    ),
          )



        )

      ],



    );
  }
}
