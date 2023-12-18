import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStatManagement extends StatelessWidget {
  SimpleStatManagement({super.key});

  // Controller viewModel = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GetBuilder(
        init: Controller(),
        builder: (controller) {
          return Text(
            controller.counter.toString(),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // viewModel.increament();
          // Get.find<Controller>().increament();
          Controller.to.increament();
        },
        child: const Text('add'),
      ),
    );
  }
}

class Controller extends GetxController {
  static Controller get to => Get.find();
  int counter = 0;

  void increament() {
    counter++;
    update();
  }
}
