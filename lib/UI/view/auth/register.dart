import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/route/route.dart';
import 'package:investment/UI/view/auth/forgot.dart';
import 'package:investment/UI/view/bottomNav/btmNavbar.dart';
import 'package:investment/UI/widgets/input_text_feild.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';
import 'package:investment/const/app_string.dart';
import 'package:investment/controller/auth_controller.dart';

import '../bottomNav/Dashboard/dash_board.dart';

class Register extends GetView<AuthController> {
  Register({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        padding:
            EdgeInsets.only(top: 54.r, left: 34.r, right: 34.r, bottom: 60.r),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 99.h,
                  width: 94.w,
                  child: Image.asset(
                    'assets/logo/logo.png',
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 36.h),
              //Welcome back txtt

              bigTitle(AppString.wlcmBack),

              SizedBox(
                height: 6.h,
              ),
              //subtitle
              bigSubTitle(AppString.wlcmBacksub),
              SizedBox(
                height: 43.h,
              ),
              smallLefttxt('E-mail Adress'),
              SizedBox(
                height: 7.h,
              ),

              EmailTextField(
                controller: controller.email,
              ),

              SizedBox(
                height: 15.h,
              ),
              smallLefttxt('Password'),
              SizedBox(
                height: 7.h,
              ),
              PasswordTextFeild(
                controller: controller.pass,
              ),
                SizedBox(
                height: 13.h,
              ),
              smallLefttxt('Referel Code'),
              SizedBox(
                height: 7.h,
              ),

              ReferCodeTextField(
                controller: controller.referCode,
              ),

              
              SizedBox(
                height: 13.h,
              ),
             
              InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // call the controller to authenticate the user
                      Get.to(const BtmNavBar());
                    }
                  },
                  child:
                      loginWidget(AppColors.stackContainer, 'Sign Up')),
              SizedBox(
                height: 27.h,
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    smallLefttxt('Already have an account? '),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: Text(' Sign In',
                          style: TextStyle(
                            color: AppColors.greenAccentclr,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            fontFamily: 'Circular Std',
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 64.h,
              ),
              // SizedBox(
              //   height: 48.w,
              //   width: 48.w,
              //   child: Image.asset('assets/logo/fingerprint_24px.png'),
              // ),
              // Text(
              //   'Tap to use fingerprint',
              //   style: TextStyle(
              //       color: Colors.grey[400],
              //       fontSize: 12.sp,
              //       fontWeight: FontWeight.w500),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

smallRighttxt(txt) {
  return Align(
    alignment: Alignment.topRight,
    child: Text(
      txt,
      style: TextStyle(
        color: AppColors.stackContainer,
        fontSize: 11.sp,
        fontFamily: 'Circular Std',
      ),
    ),
  );
}
