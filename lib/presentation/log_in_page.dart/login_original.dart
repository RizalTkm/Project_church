import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_church/presentation/controllers/login_controller.dart';
import 'package:project_church/presentation/core/Standared%20_textField.dart';
import 'package:project_church/presentation/core/constants.dart';
import 'package:project_church/presentation/core/decorated%20_font.dart';
import 'package:project_church/presentation/core/lean_font.dart';
import 'package:project_church/presentation/routes/page_routes.dart';
import 'package:project_church/presentation/signUp_page/signUp_screen.dart';

class LoginScreen3 extends GetWidget<LoginController> {
  const LoginScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(alignment: Alignment.bottomCenter, children: [
                    ClipPath(
                      clipper: WaveClipper(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(.4),
                            borderRadius: BorderRadius.circular(20)),
                        height: 600,
                        width: 500,
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
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue.withOpacity(.4),
                        child: IconButton(
                            onPressed: () async {
                              if (controller
                                      .emailtextcontroller.text.isNotEmpty &&
                                  controller
                                      .passwordcontroller.text.isNotEmpty) {
                                final result = await controller.Login();

                                if (result == true) {
                                  Get.snackbar(
                                      'Successful', 'Succesfuly loggedin');
                                }
                              }
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black.withOpacity(.8),
                              size: 35,
                            )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 140,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an acount ?"),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(PageNames.signUp);
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

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();

    path.lineTo(0, size.height - 60);

    // var point_1 = Offset(size.width * 1.5 / 8, size.height - 60);
    // var point_2 = Offset(size.width * 2.2 / 8, size.height - 30);
    // var point_3 = Offset(size.width * 3.3 / 8, size.height);
    // var point_4 = Offset(size.width / 2, size.height);
    // var point_5 = Offset(size.width * 4.7 / 8, size.height);
    // var point_6 = Offset(size.width * 5.8 / 8, size.height - 30);
    // var point_7 = Offset(size.width * 6.5 / 8, size.height - 60);
    // var point_8 = Offset(size.width, size.height - 60);

    var point_1 = Offset(size.width / 8, size.height - 60);
    var point_2 = Offset(size.width / 4, size.height - 30);
    var point_3 = Offset(size.width * 3 / 8, size.height);
    var point_4 = Offset(size.width / 2, size.height);
    var point_5 = Offset(size.width * 5 / 8, size.height);
    var point_6 = Offset(size.width * 6 / 8, size.height - 30);
    var point_7 = Offset(size.width * 7 / 8, size.height - 60);
    var point_8 = Offset(size.width, size.height - 60);

    path.quadraticBezierTo(point_1.dx, point_1.dy, point_2.dx, point_2.dy);

    path.quadraticBezierTo(point_3.dx, point_3.dy, point_4.dx, point_4.dy);

    path.quadraticBezierTo(point_5.dx, point_5.dy, point_6.dx, point_6.dy);

    path.quadraticBezierTo(point_7.dx, point_7.dy, point_8.dx, point_8.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
