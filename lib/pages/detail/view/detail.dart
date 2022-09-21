import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learngetx/pages/home/controller/home_controller.dart';
import 'package:learngetx/services/api_service.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<AppService>();
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${homeController.count}",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
