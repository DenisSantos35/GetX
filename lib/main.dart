import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/first_screen.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/pages/HomePage.dart';
import 'package:getx/second_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      getPages: [
        GetPage(name: "/", page: ()=> HomeScreen(), transition: Transition.leftToRight),
        GetPage(name: "/firstPage", page: ()=> FirstScreen(), transition: Transition.zoom),
        GetPage(name: "/secondPage", page: ()=> SecondScreen(), transition: Transition.native),
      ],
      title: 'Estudo getX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue
        ),
        useMaterial3: true,
      ),
      initialRoute: "/",
      home: const HomeScreen(),
    );
  }
}
