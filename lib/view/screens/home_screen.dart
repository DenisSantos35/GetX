import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/view/screens/first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  /*
  Obx like Getx => Like streaming
  listened to state from time to time

  GetBuilder
  if you want to use this only one time to rebuild the state
   or rebuild the widget
   */

  @override
  Widget build(BuildContext context) {
    ///usando obx fazemos a instancia desta maneira
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Get.to(const FirstScreen());
              },
              child: const Text(
                'NEXT',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// cria um getbuilder e injeta dentro dele a classse controler
          /// inicializa recebendo todos os parametros da homecontroller
          //GetBuilder<HomeController>( ou
          // GetX<HomeController>(
          //     init: HomeController(),
          //     builder: (controller) {
          //       return Column(children: [
          //         Text(
          //           controller.index.value.toString(),
          //           style: Theme.of(context).textTheme.headlineMedium,
          //           textAlign: TextAlign.center,
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //           child: MaterialButton(
          //             textColor: Colors.white,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(25.0),
          //             ),
          //             color: Colors.red,
          //             onPressed: () {
          //               controller.increaseIndex();
          //               //Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstScreen()));
          //               //Get.to(const FirstScreen(), transition: Transition.downToUp, );
          //               //Get.toNamed("/firstPage");
          //             },
          //             child: const Text("First Screen"),
          //           ),
          //         )
          //       ]);
          //     }),
          Obx(
            () => Column(
              children: [
                Text(
                  controller.index.value.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MaterialButton(
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      controller.increaseIndex();
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstScreen()));
                      //Get.to(const FirstScreen(), transition: Transition.downToUp, );
                      //Get.toNamed("/firstPage");
                    },
                    child: const Text("First Screen"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
