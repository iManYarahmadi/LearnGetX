import 'package:flutter/foundation.dart';
import 'package:get/instance_manager.dart';

import '../../../services/api_service.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(AppService());
  Get.put(HomeController());
  }
}