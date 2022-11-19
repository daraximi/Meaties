import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
class MenuTabs extends StatelessWidget {
  final String tabName;
  final bool? isActive;
  const MenuTabs({Key? key, required this.tabName,this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child:
      Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(18),
              color:isActive== null? Colors.white:Styles.primaryColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 1,
                    spreadRadius:1
                )
              ]
          ),
          height: 40,
          width: 75,
          child:
          Center(child: Text(tabName, style: TextStyle(color: isActive ==null?Styles.primaryColor:Colors.white, fontWeight: FontWeight.bold),))
      ),
    );
  }
}
