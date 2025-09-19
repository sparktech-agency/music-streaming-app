import 'package:get/get.dart';

class BangPackController extends GetxController{

  var selectedIndex = (-1).obs;

  void selectIndex( int index){
    selectedIndex.value = index;
  }

}