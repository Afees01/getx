import 'package:get/get.dart';

class CounterScreenController extends GetxController {
  int count = 0;
  @override
  onInit() {
    count = 0;
    super.onInit();
  }

  onINcrement() {
    count++;
    update();
  }

  onDecerement() {
    count--;
    update();
  }
}
