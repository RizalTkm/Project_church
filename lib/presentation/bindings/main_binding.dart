import 'package:get/get.dart';
import 'package:project_church/data/repositories/api_response_repo_implementation.dart';
import 'package:project_church/data/repositories/localStorageRepository_imply.dart';
import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';

class Mainbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalStorageRepository>(() => localStorageRepositoryImply());
    Get.lazyPut<ApiResponseRepository>(() => ApiResponseRepoImplementation());
  }
}
