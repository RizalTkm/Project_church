import 'package:get/get.dart';
import 'package:project_church/presentation/controllers/signUp_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(
        apiResponseRepository: Get.find(), localStorageRepository: Get.find()));
  }
}
