import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:learngetx/pages/detail/bindings/detail_binding.dart';
import 'package:learngetx/pages/detail/view/detail.dart';
import 'package:learngetx/pages/home/bindings/home_binding.dart';
import 'package:learngetx/pages/home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      //home: const HomeScreen(),
      getPages: [
        GetPage(name: "/home", page: ()=>const HomeScreen(),binding: HomeBinding()),
        GetPage(name: "/detail", page: ()=>const DetailScreen(),binding: DetailBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
