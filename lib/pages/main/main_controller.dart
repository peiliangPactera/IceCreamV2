import 'package:get/get.dart';

class MainController extends GetxController {
  var count = 0.obs;

  void increment() {
    count.value += 40;
  }
}
