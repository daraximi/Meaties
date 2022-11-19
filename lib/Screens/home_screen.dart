import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Utils/app_info.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:meaties_app/Screens/food_screen.dart';

import '../Widgets/hard_tabs.dart';
import '../Widgets/menu_tabs.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final Map<String,dynamic> mealOne = mealList.elementAt(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:
        ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                color:Color(0xFFC0A6AE)
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Breezy", style: Styles.headLine1,),
                          Gap(AppLayout.getHeight(5)),
                          Text("What would you like to eat?", style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20
                          ))
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                              onTap: (){
                                print("basket");
                              },
                              child: Container(
                                  child: Icon(Icons.shopping_basket_rounded)))
                        ],
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                          Stack(
                            children: [
                              Positioned(
                                left: 10,
                                top: 10,
                                  child:
                                    Icon(Icons.search_rounded, color: Colors.black,)),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.grey.shade50.withOpacity(0.5)

                                ),
                              )
                            ],
                          )
                      ),
                      Icon(FluentSystemIcons.ic_fluent_filter_filled, color: Styles.primaryColor)
                    ],
                  ),

                ],
              ),
             ),
            Divider(
              thickness: 4,
              height: 4,
              color: Styles.primaryColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(30)),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MenuTabs(tabName: "Meals", isActive: true),
                  MenuTabs(tabName: "Sides"),
                  MenuTabs(tabName: "Snacks",),
                  MenuTabs(tabName: "Drinks")
                ],
              ),
            ),
            Container(

            ),
            Gap(AppLayout.getHeight(20)),
            const HardTabs(yourText: "Today's Special Offer"),
            Gap(AppLayout.getHeight(10)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                boxShadow: [
                  BoxShadow(
                    color: Styles.primaryColor,
                    blurRadius: 1,
                    spreadRadius:1
                  )
                ]
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: 200,
              height: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/burger.jpg")
                        )
                    ),
                  ),
                  Gap(AppLayout.getWidth(20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Meaties Special Burger', style: Styles.headLine3,),
                      Text("Now"),
                      Text("Burger", style: Styles.headLine3,),
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
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Popular Now", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                  ),),
                  InkWell(
                    onTap:() {print("See full menu");},
                    child:
                      Text("SEE FULL MENU >",
                      style: TextStyle(
                        color: Styles.secondaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 15
                      ),)
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                child:Row(
                  children: mealList.map((aMeal) => FoodScreen(food: aMeal)).toList(),

                )
            ),
          ],
        )
    );
  }
}
