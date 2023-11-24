import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/view/bottomNav/card/card.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/widget/custom_appbar.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar(title: 'Information') ,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(left: 20.w,right: 20.w),
          child: Column(
            children: [
              PlanBoxWidget(planeName: 'Basic' ,dollar: '10.00', days: '30', add: '1', bonusDollar: '1', usdtEarn: '1', ontap: (){}),
              SizedBox(height: 15.h),
              PlanBoxWidget(planeName: 'Vip 1' ,dollar: '50.00', days: '30', add: '5s', bonusDollar: '1', usdtEarn: '1', ontap: (){}),
              SizedBox(height: 15.h),
              PlanBoxWidget(planeName: 'Diamond' ,dollar: '100.00', days: '30', add: '10', bonusDollar: '1', usdtEarn: '1', ontap: (){}),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}


class PlanBoxWidget extends StatelessWidget {
  const PlanBoxWidget({super.key, required this.dollar, required this.days, required this.add, required this.bonusDollar, required this.usdtEarn, required this.ontap, required this.planeName});
  final String planeName;
  final String dollar;
  final String days;
  final String add;
  final String bonusDollar;
  final String usdtEarn;

  final VoidCallback ontap;
  

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(10.h),
              decoration:  BoxDecoration(
                gradient: const LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                  colors: [Colors.greenAccent,Colors.green]
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),

              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$planeName',style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'gelion'
                  ),),

                  SizedBox(height: 15.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$dollar USDT ',style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'gelion'
                      )),
                      Text('/$days Days',style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'gelion'
                      )),
                     
                    ],
                  ),
                   SizedBox(height: 10.h,),
                      Text('USDT',style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'gelion'
                      )),
                    SizedBox(height: 10.h),

                     SizedBox(height: 10.h,),
                      Text('$add Advertisement',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'gelion'
                      )),
                      Text('$bonusDollar \$ sign up bonus',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'gelion'
                      )),
                      Text('$usdtEarn USDT Daily Earn',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'gelion'
                      )),

                      SizedBox(height: 10.h),

                      Divider(),
                      SizedBox(height: 10.h,),

                      GestureDetector(
                        onTap: ontap,
                        child: loginWidget(Colors.blue, 'Deposit Now')),

                ],
              ),
            );
  }
}