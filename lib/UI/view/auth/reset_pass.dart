import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/widgets/appbar.dart';
import 'package:investment/UI/widgets/input_text_feild.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';

class ResetPass extends StatelessWidget {
   ResetPass({super.key});

  TextEditingController currentPassController=TextEditingController();
  TextEditingController newPassController=TextEditingController();
  TextEditingController currentNewPassController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF1F3F4),
        appBar: kAppbar(title: 'Change Password',context: context),
        body: Column(
          children: [
            SizedBox(
              height: 70.h
            ),
    
            Expanded(child: Container(
              padding: EdgeInsets.all(25.h),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(13.r),
    
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  smallLefttxt('Current Password'),
                  SizedBox(height: 10.h),
    
                  PasswordTextFeild(controller: currentPassController),
                  SizedBox(height: 25.h,),
                  smallLefttxt('New Password'),
                  SizedBox(height: 10.h),
    
                  PasswordTextFeild(controller: newPassController),
                  SizedBox(height: 25.h,),
                  smallLefttxt('Current New Password'),
                  SizedBox(height: 10.h),
    
                  PasswordTextFeild(controller: currentNewPassController),
                  SizedBox(height: 40.h,),
                  loginWidget(AppColors.greenAccentclr, 'Change Password')
                ],
              ),
            ))
          ],
        )
    
    
      ),
    );
  }

  


}