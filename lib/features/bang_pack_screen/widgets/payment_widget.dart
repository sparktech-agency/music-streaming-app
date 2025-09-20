import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/bang_pack_screen/controller/payment_method_controller.dart';


class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {

final paymentController = Get.put(PaymentMethodController());
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1C1524),
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      padding: const EdgeInsets.all(16).copyWith(bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 3,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Color(0xffE0E0E0),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text("Payment Method",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
          const SizedBox(height: 15),
          Divider(
            color: Color(0xff475569),
            thickness: 0.5,
          ),
          const SizedBox(height: 10),
          //paypal
          GestureDetector(
            onTap: () {
              paymentController.selectPaymentMethod(1);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                color: Color(0xff29232A),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Obx((){
                paymentController.selectedPaymentMethod.value == null;
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/app_logos/icon_paypal.svg',
                            width: 20,
                            height: 24,
                          ),
                          SizedBox(width: 8,),
                          Image.asset(
                            'assets/app_logos/paypal.png',
                          ),
                        ],
                      ),
                      paymentController.selectedPaymentMethod.value == 1 ?
                      SvgPicture.asset(
                          'assets/app_icons/select_fill.svg',
                        height: 24,
                        width: 24,
                      ) :
                      SvgPicture.asset(
                          'assets/app_icons/select_blank.svg',
                        height: 24,
                        width: 24,
                      )
                    ]
                );

              })

            ),

          ),
          SizedBox(height: 10,),
          //master_card
          GestureDetector(
            onTap: () {
              paymentController.selectPaymentMethod(2);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                color: Color(0xff29232A),
                borderRadius: BorderRadius.circular(15),

              ),

              child: Obx((){
                paymentController.selectedPaymentMethod.value == null;
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/app_logos/mastercard.png',
                          ),
                          SizedBox(width: 8,),
                          Text("**** **** **** 2076", style: TextStyle(color: Colors.white, fontSize: 18),)
                        ],
                      ),
                      paymentController.selectedPaymentMethod.value == 2 ?
                      SvgPicture.asset(
                          'assets/app_icons/select_fill.svg',
                        height: 24,
                        width: 24,
                      ) :
                      SvgPicture.asset(
                          'assets/app_icons/select_blank.svg',
                        height: 24,
                        width: 24,

                      )
                    ]

                );


              })
            ),

          ),


          const SizedBox(height: 15),

          Divider(
            color: Color(0xff475569),
            thickness: 0.5,
          ),
          const SizedBox(height: 15),

               GestureDetector(
                  onTap: () {
                    Get.back();
                    //future implementation
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      gradient: AppColors.defaultGradient,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Confirm and Pay",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              const SizedBox(width: 10),
        ],
      ),
    );
  }
}
