import 'dart:math';

import 'package:get/get.dart';
import 'package:investment/UI/view/auth/login.dart';
import 'package:investment/UI/view/auth/register.dart';
import 'package:investment/UI/view/bottomNav/Dashboard/information.dart';
import 'package:investment/UI/view/bottomNav/Dashboard/withdraw.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/walk2.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/walk3.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/walk_1.dart';
import 'package:investment/controller/auth_controller.dart';

import '../../splash/splash_screen.dart';

class AppRoutes {
  static String walk2 = "/Walk-2";
  static const String walk3 = "/Walk-3";
  static const String walk1 = "/Walk-1";
  static const String splash = "/Splash-Sreen";
  static const String login = "/login";
  static const String forget_pass = "/forget_pass";
  static const String register = "/register";
  static const String withdraw = "/withdraw";
  static const String information = "/information";
  static const String dashboard = "/dashboard";

  List<GetPage> getpages = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: walk1,
      page: () => Walk1(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: walk2,
      page: () => Walk2(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: walk3,
      page: () => Walk3(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: login,
      page: () => Login(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: register,
      page: () => Register(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: withdraw,
      page: () => Withdraw(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: information,
      page: () => const Information(),
      transition: Transition.leftToRight,
    ),
  ];
}
