
import 'package:get/get.dart';

class HomeController extends GetxController{
  String name = "";
  //int index = 0;
  RxInt index = 0.obs;
  bool teste = false;


  void increaseIndex(){
    index.value++;
    //update();
    /// set state, o update faz o trabalho de atualzar o estado do index
  }

  void displayName(){
    teste = !teste;
    teste? name = "John": name = "";
    update();
  }

  @override
  void onInit() {
    ///when you open the screen
    print("on init");
    super.onInit();
  }

  @override
  void onReady() {
    ///when the controller is created
    print("on Ready");
    super.onReady();
  }

  @override
  void onClose() {
    /// when you close your controller
    print("on Close");
    super.onClose();
  }
}