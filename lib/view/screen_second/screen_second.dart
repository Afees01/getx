import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/counter_screen_controller.dart';

class ScreenSecond extends StatelessWidget {
  const ScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterScreenController counterScreenState = Get.find();

    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              counterScreenState.onDecerement();
            },
            child: Text("decrement counter")),
      ),
    );
  }
}
