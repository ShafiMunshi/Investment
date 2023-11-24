
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../const/app_colors.dart';

class demo1 extends StatelessWidget {
  final Widget widgettt;
  final String image, title, subtitle, log, trysq;
  const demo1({
    Key? key,
    required this.widgettt,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.log,
    required this.trysq,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: 812.h,
          width: 375.w,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 82.h,
                  left: 85.w,
                  right: 81.w,
                ),
                height: 293.h,
                width: 209.w,
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 422.h,
                width: 375.w,
                decoration: BoxDecoration(
                    color: AppColors.stackContainer,
                    borderRadius: BorderRadius.circular(25.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60.h,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Gelion',
                        color: Colors.white,
                        fontSize: 27.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Circular Std',
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 73.h,
                    ),
                    widgettt,
                    SizedBox(
                      height: 18.h,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        trysq,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
