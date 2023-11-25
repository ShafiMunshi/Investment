import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investment/UI/route/route.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/demo.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';
import 'package:investment/const/app_string.dart';


class Walk3 extends StatelessWidget {
  const Walk3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return demo1(
        widgettt: InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.login);
            },
            child: loginWidget(AppColors.LoginBlack, AppString.login)),
        image: 'assets/svg/Group.svg',
        title: AppString.unbeatM,
        subtitle: AppString.unbeatMsub,
        log: AppString.login,
        trysq: AppString.trySutraq);
  }
}
