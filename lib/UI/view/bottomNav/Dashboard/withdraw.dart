import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/view/pages/walkthrough/success_popup_screen.dart';
import 'package:investment/UI/widgets/widgets.dart';
import 'package:investment/widget/custom_appbar.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  final formKey = GlobalKey<FormState>();

  TextEditingController amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: kAppBar(title: 'Withdrawal'),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.greenAccent, Colors.green])),
              padding: EdgeInsets.all(15.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Withdrawable Balance',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontFamily: 'gelion',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '10.90 USD',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.sp,
                            fontFamily: 'gelion',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 50.h),
            Card(
              child: Container(
                padding: EdgeInsets.all(10.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        valueWidget(text: 'Need Traded: ', value: '17'),
                        valueWidget(text: 'Daily Withdrawals: ', value: '1'),
                        valueWidget(text: 'Allow withdrawals: ', value: 'no'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        valueWidget(text: 'Already Traded: ', value: '17'),
                        valueWidget(
                            text: 'Number of Withdrawals: ', value: '0'),
                        valueWidget(text: 'Minimum withdrawals: ', value: '1'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: formKey,
              child: TextFormField(
                keyboardType: TextInputType.number,
                validator: (data1){
                  if(data1!.isEmpty){
                    return 'amount is empty';
                  }else if(data1.length>4){
                    return 'amount is too long';
                  }
                },
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(10.r),
                  hintText: 'Enter Amount',
                  labelText: 'amount',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.sp,
                    fontFamily: 'gelion',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: (){
                if(formKey.currentState!.validate()){
                  // send the request to admin
                  Get.to(()=> const SuccessPopUp());
                }
              },
              child: loginWidget(Colors.greenAccent, 'Withdraw'))
          ],
        ),
      ),
    );
  }

  Row valueWidget({required String text, required String value}) =>
      Row(children: [
        bodyText2(text: text),
        Text(value,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontFamily: 'gelion',
                fontWeight: FontWeight.w500))
      ]);

  Text bodyText({required String text}) => Text(text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 15.sp,
          fontFamily: 'gelion',
          fontWeight: FontWeight.w400));

  Text bodyText2({required String text}) => Text(text,
      style: TextStyle(
          color: Colors.grey,
          fontSize: 14.sp,
          fontFamily: 'gelion',
          fontWeight: FontWeight.w400));
}
