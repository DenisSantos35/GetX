import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/services/controller.dart';

import 'initPage.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${controller.count}"))),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(child: ElevatedButton(
            child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
        floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add), onPressed: controller.increment));
  }
}



