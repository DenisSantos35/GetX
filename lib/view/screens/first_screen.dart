import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
          GetX<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Column(children: [
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
                ]);
              }),

        ],
      ),

    );
  }
}
