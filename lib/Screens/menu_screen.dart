import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Screens/food_screen.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';

import '../Utils/app_info.dart';
import 'food_view.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
    height: size.height,
    width: size.width,
    child: Column(
      children: [
        Container(
          width: size.width,
          height: AppLayout.getHeight(90),
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.all(AppLayout.getHeight(10)),
          child: Column(
            children: [
              Text("Our menu", style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w600,
                color: Colors.black
              ),)
            ],
          ),
        ),
        Divider(height: 4, thickness: 6, color: Styles.primaryColor,),
        Gap(20),
        Text("EHhh"),
        Container(
          height: double.infinity,
          width: size.width,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          margin: EdgeInsets.only(left: AppLayout.getWidth(15)),
          child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(2),
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 14,
                    crossAxisCount: 2,
                    children:
                    mealList.map((e) => FoodView(food: e)).toList()),
              ),
      ],
    )
    );
  }
}
