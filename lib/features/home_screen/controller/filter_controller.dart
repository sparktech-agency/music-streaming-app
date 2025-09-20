
import 'package:get/get.dart';

class FilterController extends GetxController {

  var selected = "Top Rated".obs;

  void select(String value) => selected.value = value;
  void reset() => selected.value = "Top Rated";

}