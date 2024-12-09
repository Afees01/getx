import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_screen_controller.dart';
import 'package:getx/view/screen_second/screen_second.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterScreenState = Get.put(CounterScreenController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ScreenSecond(),
                //     ));
                Get.to(() => ScreenSecond());
              },
              icon: Icon(Icons.arrow_circle_right_sharp))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CounterScreenState.onINcrement();
        },
      ),
      body: Center(
          child: GetBuilder<CounterScreenController>(
        builder: (controller) => Text(CounterScreenState.count.toString()),
      )),
    );
  }
}
