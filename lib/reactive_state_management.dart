import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prc/user_model.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({super.key});

  final user = (User('abc', 20)).obs;

  updateValue() {
    // approches 1
    // user.value.name = user.value.name.toUpperCase();
    // user.value.age + 1;

    // approche 1
    user.update((val) {
      val!.name = 'bac';
      val.age = val.age + 1;
    });

    // approches 2;
    // user(User('adf', user.value.age + 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(user.value.name)),
            Obx(() => Text(user().age.toString())),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          updateValue();
        },
        child: const Text('add'),
      ),
    );
  }
}
