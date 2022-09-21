import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }

  decrement() {
    count--;
  }
}
