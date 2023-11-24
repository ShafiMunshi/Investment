import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar kAppBar ({required String title})=>AppBar(
        elevation: 0,
        backgroundColor: Colors.white ,
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w400,fontFamily: 'gelion'),
        title: Text(title),centerTitle: true,);