import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/route/route.dart';
import 'package:investment/UI/view/bottomNav/Dashboard/promotion.dart';
import 'package:investment/UI/view/pages/walkthrough/refer.dart';
import 'package:investment/const/app_colors.dart';
import 'package:investment/controller/api/currency/utils.dart';
import 'package:share_plus/share_plus.dart';
import '../../../widgets/widgets.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  void initState() {
    super.initState();
  }
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BtmNavBar(),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40.r, left: 16.r, right: 17.r),
              height: 251.h,
              width: double.infinity,
              color: AppColors.homeBGcolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Avatar Section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        child: Text(
                          'OP',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Precious',
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
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.white,
                            size: 20.r,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //Currency Section
                  SizedBox(
                    height: 100.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        currencyCSection(
                            'assets/logo/logo.png',
                            'SUTRAQ CURRENCY',
                            'Q190,000',
                            AppColors.greenAccentclr,
                            Colors.white),
                        SizedBox(
                          width: 16.w,
                        ),
                        currencyCSection('assets/logo/logo.png', 'USD',
                            '\$42,000', AppColors.greenAccentclr, Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Wallet secion

            Positioned(
              // top: -350.h,
              bottom: 260.h,
              child: Container(
                padding: EdgeInsets.only(top: 18.h, left: 40.r, right: 40.r),
                height: 250.h,
                width: 375.w,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  color: AppColors.greenAccentclr,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Fund
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.information);
                          },
                          child: dashButton(
                              'assets/icons/account_balance_wallet_24px.png',
                              AppColors.homeBGcolor,
                              '   Deposit   ',
                              Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                          
                          },
                          child: dashButton('assets/icons/input_24px.png',
                              AppColors.homeBGcolor, ' Send Money ', Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.withdraw);
                          },
                          child: dashButton('assets/icons/input_24px2.png',
                              AppColors.homeBGcolor, '  Withdraw  ' , Colors.white),
                        )
                      ],
                    ),
                    
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Fund
                        InkWell(
                          onTap: ()async {
                            String appUrl = "www.facebook.com" ;
                             Share.share('Download to earn money free \n\n$appUrl');
                          },
                          child: dashButton(
                              'assets/images/share_.png',
                              AppColors.homeBGcolor,
                              'Share Friends',
                              Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(()=>const Refer());
                          },
                          child: dashButton('assets/images/team.png',
                              AppColors.homeBGcolor, 'Teams', Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(()=> const Promotioin());
                          },
                          child: dashButton('assets/images/info.png',
                              AppColors.homeBGcolor, 'Promotion', Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //transaction section

            Positioned(
              top: 450.h,
              child: Container(
                padding: EdgeInsets.only(top: 22.h, left: 35.r, right: 35.r),
                height: 450.h,
                width: 375.w,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //recent
                    recenTxt9('Currencies Price'),

                    SizedBox(
                      height: 7.h,
                    ),

                    // Recent Transaction Section
                    SizedBox(
                      height: 550,
                      child: Obx(() => ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          trxx('https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png',
                              AppColors.callInClr, 'BTC', '\$ ${btcPrice.value.toString()}'),
                          trxx('https://s2.coinmarketcap.com/static/img/coins/200x200/1839.png',
                              AppColors.callOutClr, 'BNB', '\$ ${bnbPrice.value.toString()}'),
                          trxx('https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/ZJZZK5B2ZNF25LYQHMUTBTOMLU.png',
                              AppColors.callInClr, 'ETH', '\$ ${ethPrice.value.toString()}'),
                          trxx('https://s2.coinmarketcap.com/static/img/coins/200x200/74.png',
                              AppColors.callOutClr, 'DOGE', '\$ ${dogePrice.value.toString()}'),
                          trxx('https://logowik.com/content/uploads/images/tron-coin-trx6384.jpg',
                              AppColors.callInClr, 'TRX', '\$ ${trxPrice.value.toString()}'),
                          trxx('https://cryptologos.cc/logos/the-sandbox-sand-logo.png',
                              AppColors.callOutClr, 'SAND', '\$ ${sandPrice.value.toString()}'),
                          trxx('https://cdn1-production-images-kly.akamaized.net/Dw8gt2A0j0qvOGJkq0Eyb-x2GnM=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4012029/original/044691400_1651301609-Nexo_2.jpg',
                              AppColors.callInClr, 'NEXO', '\$ ${nexoPrice.value.toString()}'),
                          trxx('https://upload.wikimedia.org/wikipedia/en/5/53/Shiba_Inu_coin_logo.png',
                              AppColors.callOutClr, 'SHIB', '\$ ${shibPrice.value.toString()}'),
                          // trxx('assets/icons/call_received_24px.png',
                          //     AppColors.callInClr, 'Access Bank', 'N4000'),
                        ],
                      ),),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    viewAll(),
                  ],
                ),
              ),
            ),


            // Positioned(

            // )

          ],
        ),
      ),
    );
  }
}
