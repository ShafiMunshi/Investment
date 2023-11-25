import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:web_socket_channel/io.dart';

const sty = TextStyle(
  fontWeight: FontWeight.w500
);

final bnbPrice = "0".obs;
final btcPrice = "0".obs;
final ethPrice = "0".obs;
final dogePrice = "0".obs;
final trxPrice = "0".obs;
final sandPrice = "0".obs;
final nexoPrice = "0".obs;
final shibPrice = "0".obs;

final btcChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/btcusdt@trade');

final bnbChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/bnbusdt@trade');

final ethChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/ethusdt@trade');

final dogeChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/dogeusdt@trade');

final trxChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/trxusdt@trade');

final sandChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/sandusdt@trade');

final nexoChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/nexousdt@trade');

final shibChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/shibusdt@trade');