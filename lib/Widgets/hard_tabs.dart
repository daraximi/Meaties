import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HardTabs extends StatelessWidget {
  final String yourText;
  const HardTabs({Key? key, required this.yourText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 25),
      child:Text(yourText, style:
      const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20
      ),),
    );
  }
}
