import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/HomePage.dart';

import '../services/controller.dart';

class Other extends StatelessWidget {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    // Access the updated count variable
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("${controller.count}"),
            ElevatedButton(
                child: Text("Go to Other"), onPressed: () => Get.to(HomePage()))
          ],
        ),
      ),
    );
  }
}
