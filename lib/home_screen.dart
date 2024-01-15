import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),
              color: Colors.red,
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstScreen()));
                //Get.to(const FirstScreen(), transition: Transition.downToUp, );
                Get.toNamed("/firstPage");

              },
              child: const Text("First Screen"),
            ),
          )
        ],
      ),
    );
  }
}
