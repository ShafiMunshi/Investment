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
      body: SizedBox(
        height: 812.h,
        width: 375.w,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 57.r,
                left: 10.r,
              ),
              height: 267.h,
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
                  SizedBox(
                    height: 148.h,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      CardDetail(
                        '**** **** **** *379',
                        'Shafi Munshi ',
                        '02/25',
                        AppColors.cardClr,
                      ),
                      SizedBox(
                        width: 29.w,
                      ),
                      CardDetail(
                        '**** **** **** *379',
                        'Shafi Munshi ',
                        '02/25',
                        AppColors.cardClr2,
                      ),
                    ]),
                  ),

                  // ListTile(title:Text('ad'))
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Align(
                      child: recenTxt9('Currencies Price'),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    transactionList('0.0534', '20 Nov 2023'),
                    transactionList('0.0534', '19 Nov 2023'),
                    transactionList('0.0534', '18 Nov 2023'),
                    transactionList('0.0534', '17 Nov 2023'),
                    transactionList('0.0534', '16 Nov 2023'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget transactionList(String money, String date) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: ListTile(
        tileColor: AppColors.greenAccentclr.withOpacity(0.90),
        leading: Image.asset(
          'assets/images/money.png',
          width: 35,
        ),
        title: Text(
          '$money \$',
          style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: Colors.amberAccent),
        ),
        subtitle: Text(date),
        trailing: Text('recieved',
            style: TextStyle(fontSize: 17.sp, color: Colors.white)),
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
        image:
            const DecorationImage(image: AssetImage('assets/icons/Path5.png'))),
    padding: EdgeInsets.only(top: 23.r, left: 20.r, right: 20.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/logo/visaa.png'),
        SizedBox(
          height: 17.h,
        ),
        smaltxt('CARD NUMBER'),
        const SizedBox(
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
