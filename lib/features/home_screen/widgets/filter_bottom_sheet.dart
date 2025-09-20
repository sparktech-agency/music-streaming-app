import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/home_screen/widgets/filter_sheet.dart';

void filterBottomSheet(BuildContext context){

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: const FilterSheet(),
      );
    },
  );


}