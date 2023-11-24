import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/const/app_colors.dart';


class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.violetlightClr,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          // height: 812.h,
          width: 375.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 57.r,
                  left: 16.r,
                  right: 27.r,
                ),
                child: Column(
                  children: [
                    boldText('Account Setting', Colors.white),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Text(
                            'OP',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          radius: 20.r,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Munshi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Gelion',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Su/Pre123',
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontFamily: 'Circular Std',
                                color: AppColors.smallTextclr,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 20.r,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              Container(
                // height: MediaQuery.of(context).size.height,
                width: 375.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                padding: EdgeInsets.only(top: 36.r, left: 35.r, right: 25.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ////
                    smalTxt2('GENERAL'),
                    SizedBox(
                      height: 9.h,
                    ),
                    /////
                    listileBtn('Bank Accounts'),
                    listileBtn('My Card'),
                    listileBtn('Change Transaction PIN'),
                    listileBtn('Security'),
                    listileBtn('Document'),
                    smalTxt2('PREFERENCES'),
                    SizedBox(
                      height: 9.h,
                    ),
                    listileBtn('Invite Your Friends'),
                    listileBtn('Report a bug'),
                    smalTxt2('NOTIFICATIONS'),
                    SizedBox(
                      height: 9.h,
                    ),
                    listileBtn('Get Real Time Updates'),
                    listileBtn('Refer and Earn'),
                    listileBtn('About Apps'),
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

listileBtn(title) {
  return ListTile(
    minVerticalPadding: 16.r,
    style: ListTileStyle.drawer,
    contentPadding: EdgeInsets.only(left: 0),
    title: Text(
      title,
      style: TextStyle(
          color: AppColors.listileClr,
          fontSize: 14.sp,
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w500),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      color: AppColors.greytrxClr2,
      size: 15.r,
    ),
  );
}
