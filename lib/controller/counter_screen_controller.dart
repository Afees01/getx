import 'package:get/get.dart';
import 'package:getx/view/counter_screen/counter_screen.dart';

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
    Get.off(() => CounterScreen());
    update();
  }
}
