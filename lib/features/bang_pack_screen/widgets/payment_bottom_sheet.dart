import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/bang_pack_screen/widgets/payment_widget.dart';

void paymentBottomSheet(BuildContext context){

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: const PaymentWidget(),
      );
    },
  );


}