

import 'package:get/get.dart';

class ProductCounterController extends GetxController {
  RxInt counter = 1.obs;

  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    if (counter > 1) {
      counter--;
    }
  }
}
