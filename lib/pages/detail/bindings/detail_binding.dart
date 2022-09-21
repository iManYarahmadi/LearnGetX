import 'package:get/instance_manager.dart';
import 'package:learngetx/pages/detail/controller/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}
