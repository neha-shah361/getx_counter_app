import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}