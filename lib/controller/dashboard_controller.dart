import 'package:get/get.dart';
import 'package:investment/controller/api/currency/realtime_currency_price.dart';

class DashboardController extends GetxController {

  @override
  void onInit() {
    btcListen();
    bnbListen();
    ethListen();
    dogeListen();
    trxListen();
    sandListen();
    nexoListen();
    shibListen();
    super.onInit();
  }
}