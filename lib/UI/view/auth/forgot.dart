import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:investment/UI/view/auth/login.dart';
import 'package:investment/UI/widgets/input_text_feild.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';  
import 'package:investment/const/app_string.dart';
import 'package:investment/controller/auth_controller.dart';

import '../bottomNav/Dashboard/dash_board.dart';

class Forgot extends GetView<AuthController> {
  const Forgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 54.r, left: 34.r, right: 34.r),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              height: 100.h,
              width: 94.w,
              child: Image.asset(
                'assets/logo/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            bigTitle(AppString.forgot),
            SizedBox(
              height: 10.h,
            ),
            bigSubTitle(AppString.forgotsub),
            SizedBox(
              height: 40.h,
            ),
            smallLefttxt('E-mail Adress'),
            SizedBox(
              height: 7.h,
            ),
            EmailTextField(
              controller: controller.email,
            ),
            SizedBox(
              height: 23.h,
            ),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return myDialog();
                    },
                  );
                },
                child:
                    loginWidget(AppColors.stackContainer, AppString.recover)),
          ],
        ),
      ),
    );
  }
}

myDialog() {
  return Dialog(
    elevation: 1,
    alignment: Alignment.center,
    child: Container(
      padding: EdgeInsets.only(left: 40.r, right: 40.r, top: 50.r),
      height: 448.h,
      width: 332.w,
      child: Column(
        children: [
          SizedBox(
            width: 82.w,
            height: 90.h,
            child: SvgPicture.asset(
              'assets/svg/checkbox.svg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 47.h,
          ),
          bigTitle(AppString.chekinvox),
          SizedBox(
            height: 13.h,
          ),
          bigSubTitle(AppString.cheksub),
          SizedBox(
            height: 25.h,
          ),
          InkWell(
              onTap: () {
                Get.to(DashBoard());
              },
              child: loginWidget(AppColors.stackContainer, AppString.chek)),
        ],
      ),
    ),
  );
}
