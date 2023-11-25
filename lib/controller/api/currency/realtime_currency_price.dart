import 'dart:convert';

import 'package:investment/controller/api/currency/utils.dart';

btcListen() {
  btcChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    btcPrice.value = getData['p'];
    // print(" ljflkafoijk ehkfklfkjv kfljdssssssssssssssssklaf vnnnvkdfajf nflkv nfskldj kl vh $btcPrice.value");
  });
}

bnbListen() {
  bnbChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    bnbPrice.value = getData['p'];
  });
}

ethListen() {
  ethChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    ethPrice.value = getData['p'];
  });
}

dogeListen() {
  dogeChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    dogePrice.value = getData['p'];
  });
}

trxListen() {
  trxChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    trxPrice.value = getData['p'];
  });
}

sandListen() {
  sandChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    sandPrice.value = getData['p'];
  });
}

nexoListen() {
  nexoChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    nexoPrice.value = getData['p'];
  });
}

shibListen() {
  shibChannel.stream.listen((message) {
    Map getData = jsonDecode(message);

    shibPrice.value = getData['p'];
  });
}
