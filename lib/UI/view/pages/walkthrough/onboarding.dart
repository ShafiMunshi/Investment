import 'package:flutter/material.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/walk2.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/walk3.dart';
import 'package:investment/UI/view/pages/walkthrough/walk-coponent/walk_1.dart';



class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        const Walk1(),
        Walk2(),
        const Walk3(),
      ],
    );
  }
}
