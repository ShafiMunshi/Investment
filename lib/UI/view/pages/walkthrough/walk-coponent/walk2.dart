import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investment/UI/route/route.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/demo.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';
import 'package:investment/const/app_string.dart';


class Walk2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return demo1(
        widgettt: InkWell(
            onTap: (() {
              Get.toNamed(AppRoutes.login);
            }),
            child: loginWidget(AppColors.LoginBlack,AppString.login)),
        image: 'assets/svg/Frame11.svg',
        title: AppString.sendM,
        subtitle: AppString.sendMsub,
        log: AppString.login,
        trysq: 'TRY SUTRAQ');
  }
}
