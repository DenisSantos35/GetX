import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.red,
              onPressed: () {
                //Get.off(const HomeScreen()); //get.off => Remove tha previous page

                ///Get. back to reutrn to the previous page
                //Get.back(); // Get.Back() => Navigator.pop(context)

                ///Navigate to screen without returning back
                // Get.offAll(
                //     const HomeScreen()); // get.offAll => Revome All pages
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) => HomeScreen()),
                //     (route) => false);

                Get.offAllNamed("/");
              },
              child: const Text("Home Screen"),
            ),
          )
        ],
      ),
    );
    ;
  }
}
