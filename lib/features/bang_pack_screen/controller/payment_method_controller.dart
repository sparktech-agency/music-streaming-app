
import 'package:get/get.dart';

class PaymentMethodController extends GetxController{

  var selectedPaymentMethod = Rx<int?>(null);

  void selectPaymentMethod(int methodIndex) {
    selectedPaymentMethod.value = methodIndex;
  }


}