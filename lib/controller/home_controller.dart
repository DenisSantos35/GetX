
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{
  String name = "";
  //int index = 0;
  RxInt index = 0.obs;
  bool teste = false;


  GetStorage box = GetStorage();

  void increaseIndex(){
    index.value++;
    //update();
    /// set state, o update faz o trabalho de atualzar o estado do index
  }

  void displayName(){

    name = "John";
    /// here to save the data
    box.write('name', name);
    update();
  }

  void getTheSaveName(){
    String name = box.read("name")??"deleted";
    print(name);
    update();
  }

  void deleteSaveName(){
    box.remove("name");
    print("It's removed");
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