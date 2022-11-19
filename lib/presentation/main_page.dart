import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_church/presentation/bindings/main_binding.dart';
import 'package:project_church/presentation/bindings/splash_binding.dart';
import 'package:project_church/presentation/routes/page_routes.dart';
import 'package:project_church/presentation/splash_screen.dart/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      initialRoute: PageNames.splash,
      initialBinding: Mainbinding(),
      // initialBinding: SplashScreenBinding(),
      getPages: PageRoutes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
