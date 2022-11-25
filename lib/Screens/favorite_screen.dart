import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:
        ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getWidth(20)
          ),
          children: [
              Gap(AppLayout.getHeight(20)),
              Center(
                child: Text("Favorites",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Gap(AppLayout.getHeight(8)),

              Divider(
                height: 10,
                thickness: 300,
              ),
              Container(
                padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: EdgeInsets.only(right: 0, top: 0),
                decoration: BoxDecoration(
                  color: Styles.kaiColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                width: 200,
                height: AppLayout.getHeight(100),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit:BoxFit.cover,
                          image: AssetImage("assets/images/burger.jpg")
                        )
                      ),
                    ),
                    Text("Meaties Burger",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),),
                    Icon(Icons.favorite_rounded, size: 30,color: Styles.primaryColor)
                  ],
                ),
              ),
            Gap(AppLayout.getHeight(10)),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              margin: EdgeInsets.only(right: 0, top: 0),
              decoration: BoxDecoration(
                  color: Styles.kaiColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                        spreadRadius: 1
                    )
                  ]
              ),
              width: 200,
              height: AppLayout.getHeight(100),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit:BoxFit.cover,
                            image: AssetImage("assets/images/veg.jpg")
                        )
                    ),
                  ),
                  Text("Vegetable Soup",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),),
                  Icon(Icons.favorite_rounded, size: 30,color: Styles.primaryColor)
                ],
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              margin: EdgeInsets.only(right: 0, top: 0),
              decoration: BoxDecoration(
                  color: Styles.kaiColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                        spreadRadius:1
                    )
                  ]
              ),
              width: 200,
              height: AppLayout.getHeight(100),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit:BoxFit.cover,
                            image: AssetImage("assets/images/stir.jpg")
                        )
                    ),
                  ),
                  Text("Stir Fry Spag",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),),
                  Icon(Icons.favorite_rounded, size: 30,color: Styles.primaryColor)
                ],
              ),
            ),
          ],
      ),
    );
  }
}
