import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/route/route.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';

class SuccessPopUp extends StatelessWidget {
  const SuccessPopUp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 90.h),
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.all(25.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/Icon.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'Succes',
                  style: TextStyle(
                      color: const Color(0xFF002251),
                      fontSize: 25.sp,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                greyText('You\'ve successfully withdrawn the money', 13),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('From', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('Credit Card', 13),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('Precious Ogar', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('VISA 8064', 13),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('To', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('Bank Account', 13),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('Bank Name', 13),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('Shafi Munshi', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('0234984234', 13),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('Bangladesh', 13),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('Date', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        // greyText('Credit Card', 13),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        greyText('${DateTime.now().hour}: ${DateTime.now().minute}', 13),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('Total', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        // greyText('Credit Card', 13),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        highlightTxt('\$4800', 14),
                        SizedBox(
                          height: 5.h,
                        ),
                        // greyText('${DateTime.now().hour}: ${DateTime.now().minute}', 13),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 35.h,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.dashboard);
                  },
                  child: loginWidget(AppColors.greenAccentclr, 'DONE'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget highlightTxt(text,double size) {
    return Text(
      text,
      style: TextStyle(
          color: const Color(0xFF002251),
          fontSize: size.sp,
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w500),
    );
  }

  Widget greyText(text,double size) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.greytrxClr2,
          fontSize: size.sp,
          fontFamily: 'Gelion',
          fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    );
  }
}
