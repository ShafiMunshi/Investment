import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/widget/custom_appbar.dart';

class Promotioin extends StatelessWidget {
  const Promotioin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar(title: 'My Promotioin') ,
      body: Padding(padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            Text('Bonus',style: TextStyle(fontSize: 15.sp,color: Colors.grey)),
            SizedBox(height: 15.h,),
            const Text('USDT 14.83',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,)),
            SizedBox(height: 10.h,),
            Container(
              width: 120.w,
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
              decoration: BoxDecoration(border: Border.all(color: Colors.green)),
              child: Text('Bonus Record',style: TextStyle(fontSize:15.sp)),
            ),
            SizedBox(height: 20.h,),

            Divider(color: Colors.grey,height: 10.h,),
            SizedBox(
              height: 390.h,
              child: ListView(
                children: [
                  ListTile(leading: const Icon(Icons.people),
                    title: const Text('Number of teams'),
                    titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.sp),
                    trailing: Text('1',style: TextStyle(color: Colors.grey,fontSize: 16.sp),) ,
                  ),
                  ListTile(leading: const Icon(Icons.people),
                    title: const Text('Valid number of invites'),
                    titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.sp),
                    trailing: Text('1',style: TextStyle(color: Colors.grey,fontSize: 16.sp),) ,
                  ),
                  ListTile(leading: const Icon(Icons.people),
                    title: const Text('Team cycle investment details'),
                    titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.sp),
                    trailing: Text('1',style: TextStyle(color: Colors.grey,fontSize: 16.sp),) ,
                  ),
                  SizedBox(height: 15.h,),
                  ListTile(leading: const Icon(Icons.people),
                    title: const Text('Level 1'),
                    titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.sp),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('people invites: 1',style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                        Text('contribution: 10.34\$',style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                      ],
                    ) ,
                  ),
                  SizedBox(height: 16.h,),
                  ListTile(leading: const Icon(Icons.people),
                    title: const Text('Level 2'),
                    titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.sp),
                    trailing: Column(
                      children: [
                        Text('people invites: 0',style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                        Text('contribution: 0\$',style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                      ],
                    ) ,
                  ),
                  SizedBox(height: 16.h,),
                  ListTile(leading: const Icon(Icons.people),
                    title: const Text('Level 3'),
                    titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.sp),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('people invites: 0',style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                        Text('contribution: 0\$',style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                      ],
                    ) ,
                  ),

                ],
              ),
            ),

            SizedBox(height: 12.h,),
            const Divider(color: Colors.grey,),
            SizedBox(height: 10.h,),
            Text('Invite Friends',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.sp)),
            SizedBox(height: 10.h,),
            ElevatedButton(onPressed: (){}, child: const Text('Go Now'),style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),)
          ],
        ),
      ),
    );
  }
}