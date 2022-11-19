import 'package:get/get.dart';
import 'package:project_church/data/repositories/localStorageRepository_imply.dart';
import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';

class HomeController extends GetxController {
  ApiResponseRepository apiResponseRepository;
  LocalStorageRepository localStorageRepository;

  HomeController(
      {required this.apiResponseRepository,
      required this.localStorageRepository});
}
