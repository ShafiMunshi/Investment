import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';
import '../../../widgets/widgets.dart';

class Trxlisst extends StatelessWidget {
  final heightt;
  final fundBtm;

  final SmBtm;
  final WitdrBtm;
  final gap;
  final listViewHeight;

  Trxlisst({
    Key? key,
    required this.heightt,
    this.fundBtm,
    this.SmBtm,
    this.WitdrBtm,
    required this.gap,
    required this.listViewHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 23.r, right: 20.r, top: 18.r),
      // alignment: Alignment.center,
      height: heightt, //528.h,
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
          Container(
            height: listViewHeight, //315.h,
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
}
