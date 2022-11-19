import 'package:flutter/material.dart';
import 'package:meaties_app/Utils/app_styles.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:gap/gap.dart';

class FoodScreen extends StatelessWidget {
  final Map<String, dynamic> food;
  const FoodScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(right: 15, top: 1),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3,
            spreadRadius: 3
          )
        ]
      ),
      width: size.width*0.55,
      height: AppLayout.getHeight(260),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${food['image']}")
              )
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          Center(
            child: Column(
              children: [
                Text(food['meal'], style: Styles.headLine3,),
                Text("Now"),
                Text(food['price'], style: Styles.headLine3,),
                Text("(10% off)"),
                Gap(10),
                Container(
                  height: AppLayout.getHeight(45),
                  width: AppLayout.getWidth(120),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Styles.primaryColor,
                      width: 5
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(child: Text("Add to cart", style: TextStyle(color:Styles.primaryColor))),
                )
              ],
            ),
          )
        ],
      ),


    );
  }
}
