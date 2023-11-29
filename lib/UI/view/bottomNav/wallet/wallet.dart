import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';
import '../../../widgets/widgets.dart';
import '../component/trx_list_class.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

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
                boldText('My Wallets'),
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
                child: Trxlisst(
                  heightt: 528.h,
                    fundBtm: dashButton(
                        'assets/icons/account_balance_wallet_24px.png',
                        AppColors.stackContainer,
                        'Fund Wallet',
                        AppColors.trxClr),
                    SmBtm: dashButton(
                        'assets/icons/input_24px.png',
                        AppColors.stackContainer,
                        'Send Money',
                        AppColors.trxClr),
                    WitdrBtm: dashButton('assets/icons/input_24px2.png',
                        AppColors.stackContainer, 'Withdraw', AppColors.trxClr),
                    gap: 43.h,
                    listViewHeight: 314.h) //That container
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
        recenTxt9('Recent Transaction'),
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
