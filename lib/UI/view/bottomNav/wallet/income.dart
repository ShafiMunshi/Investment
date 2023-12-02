import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/view/pages/walkthrough/refer.dart';

import '../../../../const/app_colors.dart';
import '../../../widgets/widgets.dart';
import '../component/trx_list_class.dart';

class Income extends StatelessWidget {
  const Income({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: floatingbtn(),
      backgroundColor: AppColors.lightWhiteClr,
      body: SizedBox(
        height: 812.h,
        width: 375.w,
        child: Stack(children: [
          Container(
            padding: EdgeInsets.only(
              top: 57.r,
              left: 16.r,
            ),
            height: 251.h,
            width: 375.w,
            child: Column(
              children: [
                boldText('Incomes'),
                SizedBox(
                  height: 19.h,
                ),
                //Listview
                SizedBox(
                  height: 97.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      currencyCSection(
                          'assets/logo/logo.png',
                          'SUTRAQ CURRENCY',
                          'Q190,000',
                          Colors.white,
                          AppColors.violetlightClr),
                      SizedBox(
                        width: 16.w,
                      ),
                      currencyCSection('assets/logo/logo.png', 'USD',
                          '\$42,000', AppColors.greenAccentclr, Colors.white),
                    ],
                  ),
                ),
                SizedBox(
                  height: 29.h,
                ),
              ],
            ),
          ),
          Positioned(
            top: 220.h,
            child: Padding(
                padding: EdgeInsets.only(left: 8.0.r, right: 12.r),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     
                       ElevatedButton(
                        onPressed: () {
                          Get.to(()=> const Refer());
                        },
                        child: const Text(
                          'Deposit now',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'gelion',
                              fontWeight: FontWeight.w800),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greenAccentclr),
                      ),
                      SizedBox(width: 20.w),
                       ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Invitation reward',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'gelion',
                                fontWeight: FontWeight.w800),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.greenAccentclr)),
                    ],
                  ),

                  SizedBox(height: 20.h),
                  Container(
                    height: 445.h,    
                    width: 360.w,
                    // width: double.infinity,
                    decoration: BoxDecoration(color: AppColors.greenAccentclr.withOpacity(0.2)),
                    child: Expanded(
          // height: listViewHeight, //315.h,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              incomeTrxxTitle('Level', 'Deposit\nquantity', 'daily\nincome', 'withdraw'),
              incomeTrxx('VIP1', '10.00-15.00', '10.07-10.12%', '10.07-10.12%'),
              incomeTrxx('VIP2', '20.00-35.00', '12.07-10.29%', '12.12-12.29%'),
              incomeTrxx('VIP3', '50.00-65.00', '15.09-15.75%', '15.32-15.12%'),
              incomeTrxx('VIP4', '100.00-115.00', '20.17-20.98%', '20.07-20.32%'),
              incomeTrxx('VIP5', '200.00-230.00', '25.12-25.23%', '25.23-25.45%'),
              incomeTrxx('VIP6', '300.00-345.00', '30.13-30.56%', '30.34-30.41%'),
              incomeTrxx('VIP7', '400.00-450.00', '35.13-35.34%', '35.65-35.11%'),
             
            
            ],
          ),
        ),
                  )
                ]) //That container
                ),
          ),
        ]),
      ),
    );
  }
}

Widget TrxList(Widget fundBtm, SmBtm, WitdrBtm, gap, listViewHeight) {
  return Container(
    padding: EdgeInsets.only(left: 23.r, right: 20.r, top: 18.r),
    // alignment: Alignment.center,
    height: 540.h,
    width: 360.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Fund
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [fundBtm, SmBtm, WitdrBtm],
        ),
        SizedBox(height: gap //43.h,
            ),
        recenTxt9('Recent All Transaction'),
        Expanded(
          // height: listViewHeight, //315.h,
          child: ListView(
            children: [
              trxx('assets/icons/call_received_24px.png', AppColors.callInClr,
                  'Access Bank', '\$2400'),
              trxx('assets/icons/call_made_24px.png', AppColors.callOutClr,
                  'Alpha Loans', 'N10,000'),
              trxx('assets/icons/call_received_24px.png', AppColors.callInClr,
                  'Access Bank', 'N4,500,000'),
              trxx('assets/icons/call_made_24px.png', AppColors.callOutClr,
                  'Alpha Loans', 'N10,000'),
              trxx('assets/icons/call_received_24px.png', AppColors.callInClr,
                  'Access Bank', 'N4000'),
              trxx('assets/icons/call_made_24px.png', AppColors.callOutClr,
                  'Alpha Loans', 'N10,000'),
              trxx('assets/icons/call_received_24px.png', AppColors.callInClr,
                  'Access Bank', 'N4000'),
              trxx('assets/icons/call_made_24px.png', AppColors.callOutClr,
                  'Alpha Loans', 'N10,000'),
              trxx('assets/icons/call_received_24px.png', AppColors.callInClr,
                  'Access Bank', 'N4000'),
            ],
          ),
        ),
        // viewAll()
      ],
    ),
  );
}
