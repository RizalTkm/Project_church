import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_church/presentation/controllers/login_controller.dart';
import 'package:project_church/presentation/core/Standared%20_textField.dart';
import 'package:project_church/presentation/core/constants.dart';
import 'package:project_church/presentation/core/decorated%20_font.dart';
import 'package:project_church/presentation/core/lean_font.dart';
import 'package:project_church/presentation/core/standard_font.dart';
import 'package:project_church/presentation/signUp_page/signUp_screen.dart';

class LoginScreenDemo extends GetWidget<LoginController> {
  LoginScreenDemo({super.key});

  final screenwidth = Get.size.width;
  final screenheight = Get.size.height;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: screenheight * .67,
                        width: screenwidth,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(.4),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            CircleAvatar(
                              radius: 35,
                            ),
                            LeanFont(text: 'My Parish'),
                            Kheigh10,
                            Kheigh10,
                            decoartedFont(text: 'Some Wordings'),
                            const SizedBox(
                              height: 60,
                            ),
                            StandaredTextfield(
                              obscuretext: false,
                              hintText: 'Email ID',
                              textEditingController:
                                  controller.emailtextcontroller,
                            ),
                            StandaredTextfield(
                              obscuretext: false,
                              hintText: 'Password',
                              textEditingController:
                                  controller.passwordcontroller,
                            ),
                            Kheigh10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                ),
                                Text('Forgot Password?'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: screenheight * .67,
                        child: Container(
                          width: screenwidth * .45,
                          height: screenheight * .08,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.withOpacity(.4),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.elliptical(100, 100))),
                        ),
                      ),
                      Positioned(
                        top: screenheight * .61,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.blue.withOpacity(.4),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black.withOpacity(.8),
                                size: 35,
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an acount ?"),
                      TextButton(
                          onPressed: () {
                            Get.to(() => SignUpScreen());
                          },
                          child: Text('Sign up'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
