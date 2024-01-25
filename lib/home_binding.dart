import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/controller/second_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeController(), fenix: true);
    Get.lazyPut(()=>SecondController(), fenix: true);
  }
}