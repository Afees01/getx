import 'package:get/get.dart';

class CounterScreenController extends GetxController {
  int count = 0;
  onINcrement() {
    count++;
    update();
  }

  onDecerement() {
    count--;
    update();
  }
}
