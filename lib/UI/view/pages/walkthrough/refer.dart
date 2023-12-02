import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/UI/widgets/appbar.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';


class Refer extends StatelessWidget {
  const Refer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: kAppbar(title: 'Refer a friend',context: context),
      body: Padding(
        padding:
            EdgeInsets.only(left: 40.w, right: 40.w, top: 40.h, bottom: 40.h),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Artwork.png',
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Text(
                  'Earn cash reward when your friends\nsignup and use your referral link or\ncode',
                  style: TextStyle(
                      color: AppColors.greytrxClr2,
                      fontSize: 15.sp,
                      fontFamily: 'Gelion',
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 65.h,
                width: 220.w,
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.withOpacity(0.4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bigTitle('2342FX'),
                    IconButton(
                        onPressed: () async {
                          await Clipboard.setData(
                              const ClipboardData(text: "2342FX"));
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Link copied to clipboard'),
                            duration: Duration(seconds: 2),
                          ));
                        },
                        icon: const Icon(Icons.copy)),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 40.w, right: 40.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        smalTxt2('Accepted', size: 16.sp),
                        SizedBox(height: 5.h),
                        Text(
                          '2',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 17.sp,
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        smalTxt2('Amount Earned', size: 16.sp),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '\$200',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 17.sp,
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
