import 'package:get/get.dart';
import 'package:project_church/presentation/bindings/home_binding.dart';
import 'package:project_church/presentation/bindings/login_binding.dart';
import 'package:project_church/presentation/bindings/signup_binding.dart';
import 'package:project_church/presentation/bindings/splash_binding.dart';
import 'package:project_church/presentation/home_page.dart/home_screen.dart';
import 'package:project_church/presentation/log_in_page.dart/logIn_screen.dart';
import 'package:project_church/presentation/log_in_page.dart/login_original.dart';
import 'package:project_church/presentation/log_in_page.dart/login_screen_2.dart';
import 'package:project_church/presentation/signUp_page/signUp_screen.dart';
import 'package:project_church/presentation/splash_screen.dart/splash_screen.dart';

class PageNames {
  static final String home = '/home';
  static final String login = '/login';
  static final String splash = '/splash';
  static final String signUp = '/signUp';
}

class PageRoutes {
  static final pages = [
    GetPage(
        name: PageNames.home,
        binding: HomeBinding(),
        page: () => const HomeScreen(),
        transition: Transition.leftToRight),
    GetPage(
        name: PageNames.splash,
        page: () => SplashScreen(),
        binding: SplashScreenBinding(),
        transition: Transition.leftToRight),
    GetPage(
        name: PageNames.login,
        page: () => LoginScreen3(),
        binding: LoginBinding(),
        transition: Transition.leftToRight),
    GetPage(
        name: PageNames.signUp,
        page: () => SignUpScreen(),
        binding: SignupBinding(),
        transition: Transition.leftToRight)
  ];
}
