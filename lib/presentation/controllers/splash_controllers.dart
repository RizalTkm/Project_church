import 'package:get/get.dart';
import 'package:project_church/data/repositories/localStorageRepository_imply.dart';
import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';
import 'package:project_church/presentation/log_in_page.dart/logIn_screen.dart';
import 'package:project_church/presentation/routes/page_routes.dart';

class SplashController extends GetxService {
  LocalStorageRepository localStorageRepository;
  ApiResponseRepository apiResponseRepository;

  SplashController(
      {required this.apiResponseRepository,
      required this.localStorageRepository});

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(PageNames.login);
    });
    super.onInit();
  }

  // Future<void> validatesession() async {
  //   final token = await localStorageRepository.GetToken();

  // //  try{

  // //    if(token != null){

  // //   }
  // //  }
  // }
}
