import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prc/reactive_state_management.dart';
import 'package:getx_prc/simple_state_management.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        // GetPage(
        //   name: '/',
        //   page: () => ReactiveStateManagement(),
        // ),
        GetPage(
          name: '/',
          page: () => SimpleStatManagement(),
        )
      ],
    );
  }
}
