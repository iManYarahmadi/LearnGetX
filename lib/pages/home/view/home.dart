import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:learngetx/pages/detail/view/detail.dart';
import 'package:learngetx/pages/home/controller/home_controller.dart';
import 'package:learngetx/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final apiService = Get.put(AppService());
    //final homeController = Get.put(HomeController());

     final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is home screen",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                //Get.to(const DetailScreen());
                Get.toNamed("/detail");
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: const Text('Go to detail'),
            ),
            const Divider(
              color: Colors.red,
              height: 6,
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    homeController.increment();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: const Text('+'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    homeController.decrement();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: const Text('-'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
