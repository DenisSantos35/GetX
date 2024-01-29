import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  ///Get.put(first D I)
  ///Get.put(controller, permanent: true);
  // final controller = Get.put(HomeController(), permanent: true);
  final HomeController controller = Get.find();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("First Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// cria um getbuilder e injeta dentro dele a classse controler
          /// inicializa recebendo todos os parametros da homecontroller
          //GetBuilder<HomeController>(
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
          //
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

          GetBuilder<HomeController>(
            init: HomeController(),
              builder: (controller) => Text(
                    controller.box.read('name')??"",
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.red,
              onPressed: () {
                controller.displayName();
              },
              child: const Text("Display Name"),
            ),
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
                controller.getTheSaveName();
              },
              child: const Text("get Name"),
            ),
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
                controller.deleteSaveName();
              },
              child: const Text("delete Name"),
            ),
          ),
        ],
      ),
    );
  }
}
