import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';

class SignUpController extends GetxController {
  ApiResponseRepository apiResponseRepository;
  LocalStorageRepository localStorageRepository;
  final aadharTextController = TextEditingController();
  final nameTextcontroller = TextEditingController();
  final emailtextcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpassswordController = TextEditingController();

  SignUpController(
      {required this.apiResponseRepository,
      required this.localStorageRepository});

  Future<bool> signup() async {
    if (aadharTextController.text.isNotEmpty &&
        nameTextcontroller.text.isNotEmpty &&
        emailtextcontroller.text.isNotEmpty &&
        passwordcontroller.text.isNotEmpty &&
        passwordcontroller.text.isNotEmpty &&
        confirmpassswordController.text.isNotEmpty) {
      if (passwordcontroller.value == confirmpassswordController.value) {
        final useRegister = await apiResponseRepository.SignUp(
            aadharTextController.text,
            nameTextcontroller.text,
            emailtextcontroller.text,
            passwordcontroller.text);

        return await useRegister.fold((l) => false, (r) => true);
      } else {
        Get.snackbar('Error', 'Password Fields does not match');
        return false;
      }
    } else {
      Get.snackbar('Error on Signup', 'Fields cannot be empty');
      return false;
    }
  }
}
