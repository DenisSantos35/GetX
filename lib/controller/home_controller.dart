
import 'package:get/get.dart';

class HomeController extends GetxController{
  String name = "John";
  //int index = 0;
  RxInt index = 0.obs;

  void increaseIndex(){
    index.value++;
    //update();
    /// set state, o update faz o trabalho de atualzar o estado do index
  }
}