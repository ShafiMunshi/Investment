import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:investment/UI/route/route.dart';
import 'package:investment/UI/view/bottomNav/Dashboard/dash_board.dart';
import 'package:investment/UI/view/bottomNav/btmNavbar.dart';
import 'package:investment/UI/view/pages/walkthrough/refer.dart';
import 'package:investment/controller/dashboard_controller.dart';
import 'package:investment/dependency.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MainBinding mainBinding = MainBinding();
  await mainBinding.dependencies();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: BindingsBuilder(() {
          Get.put(DashboardController(),permanent: true);
        }),
        theme: ThemeData(useMaterial3: true),
         home: BtmNavBar(),
        getPages: AppRoutes().getpages,
      ),
    );
  }
}
