import 'package:get/get.dart';
import 'package:project_church/data/repositories/api_response_repo_implementation.dart';
import 'package:project_church/data/repositories/localStorageRepository_imply.dart';
import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';
import 'package:project_church/presentation/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(
        apiResponseRepository: Get.find(), localStorageRepository: Get.find()));
    Get.lazyPut<ApiResponseRepository>(() => ApiResponseRepoImplementation());
    Get.lazyPut<LocalStorageRepository>(() => localStorageRepositoryImply());
  }
}
