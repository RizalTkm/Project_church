import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_church/data/data_sources/api_endpoints.dart';
import 'package:project_church/presentation/controllers/login_controller.dart';
import 'package:project_church/presentation/core/constants.dart';
import 'package:project_church/presentation/core/image_url.dart';
import 'package:project_church/presentation/core/standard_font.dart';
import 'package:project_church/presentation/core/theme.dart';

import 'package:project_church/presentation/routes/page_routes.dart';

class Loginscreen extends GetWidget<LoginController> {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 2,
            child: Stack(children: [
              Positioned.fill(
                bottom: Kradius / 2,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: gradinetTheme),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(180))),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: Kradius,
                  backgroundImage: NetworkImage(logoUrl),
                ),
              )
            ])),
        Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Kheigh10,
                  const StandardFont(
                    text: 'Log in',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const StandardFont(
                    text: 'username',
                    textAlign: TextAlign.start,
                  ),
                  TextField(
                    controller: controller.emailtextcontroller,
                  ),
                  Kheigh10,
                  const StandardFont(
                    text: 'password',
                    textAlign: TextAlign.start,
                  ),
                  TextField(
                    controller: controller.passwordcontroller,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () async {
                      // final userlogin = await controller.Login();
                      // return;
                      // try {
                      //   final response =
                      //       await Dio().post(ApiEndpoints.endpoint2, data: {
                      //     'email': controller.emailtextcontroller.text,
                      //     'password': controller.passwordcontroller.text
                      //   });

                      //   log(response.data.toString());
                      // } catch (e) {
                      //   log(e.toString());
                      // }

                      if (controller.emailtextcontroller.text.isNotEmpty &&
                          controller.passwordcontroller.text.isNotEmpty) {
                        final loginAttempt = await controller.Login();
                        if (loginAttempt != null && loginAttempt) {
                          Get.offNamed(
                            PageNames.home,
                          );
                        } else {
                          Get.snackbar('Error', 'Error login');
                        }
                      } else {
                        Get.snackbar('Error', 'Please enter email and pasword');
                      }

                      // if (controller.usernameController!.text.isEmpty ||
                      //     controller.passwordController!.text.isEmpty) {
                      //   Get.snackbar('Error', 'One of the field is empty');
                      // } else {
                      //   login;
                      // }
                      // final result = await controller.Login();

                      // if (result) {
                      //   Get.offAllNamed(DeliveryRoutes.home);
                      // } else {
                      //   Get.snackbar('Error', 'Error on login');
                      // }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: gradinetTheme),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: StandardFont(
                            text: 'Login',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    ));
  }
}
