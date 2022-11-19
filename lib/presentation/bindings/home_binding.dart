import 'package:get/get.dart';
import 'package:project_church/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        apiResponseRepository: Get.find(), localStorageRepository: Get.find()));
  }
}
