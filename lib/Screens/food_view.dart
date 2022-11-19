import 'package:flutter/material.dart';
import 'package:meaties_app/Utils/app_styles.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:gap/gap.dart';

class FoodView extends StatelessWidget {
  final Map<String, dynamic> food;
  const FoodView({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(right: 15, top: 1),
      decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3,
                spreadRadius: 3
            )
          ]
      ),
      width: size.width*0.20,
      height: AppLayout.getHeight(280),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${food['image']}")
                )
            ),
          ),
          Gap(AppLayout.getHeight(2)),
          Center(
            child: Column(
              children: [
                Text(food['meal'], style: Styles.headLine3,),
                Text(food['price'], style: Styles.headLine4,),
              ],
            ),
          )
        ],
      ),


    );
  }
}
