import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';

class LoginController extends GetxController {
  ApiResponseRepository apiResponseRepository;
  LocalStorageRepository localStorageRepository;
  final emailtextcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  LoginController(
      {required this.apiResponseRepository,
      required this.localStorageRepository});

  Future<bool?> Login() async {
    print('login function called');
    try {
      final loginresponse = await apiResponseRepository.login(
          emailtextcontroller.text, passwordcontroller.text);

      final result = loginresponse.fold((l) => false, (r) => true);
      // log(loginresponse.toString());
      log(result.toString());

      return result;
    } catch (e) {
      log(e.toString());
    }
  }
}
