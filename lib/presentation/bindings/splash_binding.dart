import 'package:get/get.dart';
import 'package:project_church/presentation/controllers/splash_controllers.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(
        apiResponseRepository: Get.find(), localStorageRepository: Get.find()));
  }
}
