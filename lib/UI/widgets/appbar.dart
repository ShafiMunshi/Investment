

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/const/app_colors.dart';

AppBar kAppbar({required String title,required BuildContext context}){
    return AppBar(
        titleSpacing: 0 ,
        backgroundColor: Color(0xFFF1F3F4),
        leadingWidth: 40,
        leading: Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColors.greenAccentclr,
              child: Icon(Icons.arrow_back,color: Colors.white,size: 25.sp,),
            ),
          ),
        ),

        centerTitle: true,

        title: Text(title,style: TextStyle(
          fontSize: 20.sp,
          color: AppColors.violetlightClr,
          fontWeight: FontWeight.w500
        ),),
      );
  }