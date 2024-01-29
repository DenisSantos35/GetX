import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/home_binding.dart';
import 'package:getx/view/screens/first_screen.dart';
import 'package:getx/view/screens/home_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  HomeBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialRoute: "/",
      // getPages: [
      //   GetPage(name: "/", page: ()=> HomeScreen(), transition: Transition.leftToRight),
      //   //GetPage(name: "/firstscreen", page: ()=> FirstScreen(), transition: Transition.circularReveal, transitionDuration: Durations.short4);
      // ],
      title: 'Estudo getX',
      initialBinding: HomeBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue
        ),
        useMaterial3: true,
      ),

      home: HomeScreen(),
    );
  }
}
