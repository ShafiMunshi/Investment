import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';
import '../../../widgets/widgets.dart';
import '../component/trx_list_class.dart';

class Cardss extends StatelessWidget {
  const Cardss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingbtn(),
      backgroundColor: AppColors.lightWhiteClr,
      body: Container(
        height: 812.h,
        width: 375.w,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 57.r,
                left: 10.r,
              ),
              height: 261.h,
              width: 375.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: boldText('My Cards'),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  //Card Section
                  Container(
                    height: 146.h,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      CardDetail(
                        '**** **** **** *379',
                        'Shafi Munshi ',
                        '02/25',
                        AppColors.cardClr,
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      CardDetail(
                        '**** **** **** *379',
                        'Shafi Munshi ',
                        '02/25',
                        AppColors.cardClr2,
                      ),
                    ]),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 290.h,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 16.r,
                  left: 10.r,
                ),
                child: Trxlisst(
                    heightt: 490.h,
                    fundBtm: SizedBox(height: 0),
                    SmBtm: SizedBox(height: 0),
                    WitdrBtm: SizedBox(height: 0),
                    gap: 0.h,
                    listViewHeight: 393.h),
              ),
            )
            // TrxList(fundBtm, SmBtm, WitdrBtm, gap, listViewHeight)
          ],
        ),
      ),
    );
  }
}

Widget CardDetail(cardNum, cardName, exp, cardClr) {
  return Container(
    height: 150.h,
    width: 270.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: cardClr,
        image: DecorationImage(image: AssetImage('assets/icons/Path5.png'))),
    padding: EdgeInsets.only(top: 23.r, left: 20.r, right: 20.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/logo/visaa.png'),
        SizedBox(
          height: 17.h,
        ),
        smaltxt('CARD NUMBER'),
        SizedBox(
          height: 2,
        ),
        bigTxtt(cardNum),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                smaltxt('CARD HOLDER NAME'),
                SizedBox(
                  height: 4.h,
                ),
                bigTxtt(cardName),
              ],
            ),
            Column(
              children: [
                smaltxt('EXPIRE DATE'),
                SizedBox(
                  height: 4.h,
                ),
                bigTxtt(exp),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget smaltxt(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: AppColors.smallTextclr,
        fontSize: 9.sp,
        fontFamily: 'Circular Std',
        fontWeight: FontWeight.w500),
  );
}

Widget bigTxtt(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: Colors.white,
        fontSize: 15.sp,
        fontFamily: 'Circular Std',
        fontWeight: FontWeight.w500),
  );
}
