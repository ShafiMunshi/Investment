import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/const/app_colors.dart';

fundWidget(btnTxt) {
  return Dialog(
    alignment: Alignment.center,
    // alignment: Alignment.center,
    child: Container(
      padding: EdgeInsets.only(
        top: 22.r,
      ),
      height: 304.h,
      width: 370.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Choose Option',
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.greytrxClr3),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            'Pick a card to continue.',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.greytrxClr3),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: amountSelector('assets/images/portu.png', 'N12,000',
                    'N12,000', Colors.white, AppColors.violetlightClr),
              ),
              //Card Section

              
              amountSelector(
                'assets/images/ngg.png',
                'GBP',
                '\$4000',
                Colors.black,
                Colors.white,
              ),
              SizedBox(
                width: 5.w,
              ),
            
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.r,
              right: 24.r,
            ),
            child: loginWidget(AppColors.stackContainer, btnTxt),
          )
        ],
      ),
    ),
  );
}

amountSelector(flag, txt, amount, txtClr, bgClr) {
  return Card(
    elevation: 0,
    child: Container(
      padding: EdgeInsets.only(top: 19.r, left: 9.r),
      height: 96.h,
      width: 95.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 9,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: bgClr,
          borderRadius: BorderRadius.circular(13.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(flag),
              SizedBox(
                width: 4.w,
              ),
              Text(
                txt,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: txtClr),
              ),
            ],
          ),
          SizedBox(
            height: 17.h,
          ),
          Text(
            amount,
            style: TextStyle(
              color: txtClr,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gelion',
            ),
          ),
        ],
      ),
    ),
  );
}

smalTxt2(txt,{ double size=10.0}) {
  return Text(
    txt,
    style: TextStyle(
        color: AppColors.greytrxClr2,
        fontSize: size.sp,
        fontFamily: 'Gelion',
        fontWeight: FontWeight.w500),
  );
}

boldText(txt, [clr]) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: clr,
        fontSize: 20.sp,
        fontFamily: 'Gelion',
        fontWeight: FontWeight.w700),
  );
}

floatingbtn() {
  return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
        size: 25.h,
      ));
}

viewAll() {
  return Align(
    alignment: Alignment.center,
    child: TextButton(
      onPressed: () {},
      child: Text(
        'View All',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.greenAccentclr,
            fontSize: 14.sp,
            fontFamily: 'Circular Std',
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget trxx(iconss, iconBG, title, trxValue) {
  return 
     Container(
      alignment: Alignment.center,
      height: 56.h,
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Colors.grey,
        width: 1,
      ))),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CircleAvatar(
            backgroundColor: iconBG,
            child: Image.network(
              iconss,
              width: 30.w,
            )),
        SizedBox(
          width: 13.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: AppColors.currencyClr,
                  fontSize: 14.sp,
                  fontFamily: 'Circular Std',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              '28 Jun,2022',
              style: TextStyle(
                  color: AppColors.greytrxClr,
                  fontSize: 10.sp,
                  fontFamily: 'Gelion',
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Spacer(),
        Text(
          trxValue,
          style: TextStyle(
              color: AppColors.currencyClr,
              fontSize: 16.sp,
              fontFamily: 'Gelion',
              fontWeight: FontWeight.w600),
        ),
      ]),
   
  );
}

recenTxt9(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: AppColors.trxClr,
        fontSize: 17.sp,
        fontFamily: 'Gelion',
        fontWeight: FontWeight.w600),
  );
}

Widget currencyCSection(asset, currTxt, currValue, ValueClr, bgClr) {
  return Container(
    height: 90.h,
    width: 196.w,
    decoration: BoxDecoration(
      color: bgClr,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 12.r, left: 17.r, right: 15.r),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Image.asset(
              asset,
              width: 14,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              currTxt,
              style: TextStyle(
                color: AppColors.currencyClr,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Circular Std',
              ),
            ),
            Spacer(),
            Icon(
              Icons.visibility_outlined,
              size: 13.sp,
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'AVAILABLE BALANCE',
          style: TextStyle(
              fontFamily: 'Circular Std',
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              fontSize: 7.sp),
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currValue,
              style: TextStyle(
                  fontFamily: 'Gelion',
                  color: ValueClr,
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_right_alt_rounded,
                color: AppColors.greenAccentclr,
                size: 24.h,
              ),
            ),
          ],
        ),
      ]),
    ),
  );
}

Widget dashButton(asset, bgClr, Txt, txtClr) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: bgClr,
        child: Image.asset(
          asset,
          color: Colors.white,
          width: 19.h,
          fit: BoxFit.cover,
        ),
        radius: 25.r,
      ),
      SizedBox(
        height: 11.h,
      ),
      Text(
        Txt,
        style: TextStyle(
            fontSize: 14.sp,
            color: txtClr,
            fontWeight: FontWeight.w700,
            fontFamily: 'Circular Std'),
      )
    ],
  );
}

Widget loginWidget(clr, txt) {
  return Container(
    alignment: Alignment.center,
    height: 61.h,
    width: 307.w,
    decoration: BoxDecoration(
      color: clr,
      borderRadius: BorderRadius.circular(3.r),
    ),
    child: Text(
      txt,
      style: TextStyle(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5),
    ),
  );
}

smallLefttxt(txt) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      txt,
      style: TextStyle(
        color: AppColors.smallTextclr,
        fontSize: 14.sp,
        fontFamily: 'Circular Std',
      ),
    ),
  );
}

bigTitle(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: AppColors.blackText,
        fontSize: 27.sp,
        fontWeight: FontWeight.w600),
  );
}

bigSubTitle(txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 16.sp,
        color: AppColors.smallTextclr,
        fontFamily: 'Circular Std',
        fontWeight: FontWeight.w400),
  );
}
