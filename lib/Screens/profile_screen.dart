import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(

        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(30),
          vertical: AppLayout.getHeight(20)
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Center(
            child: Stack(
              children: [Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/breezy.jpg")
                  )
                ),
              ),
              Container(
                height:140,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Styles.textColor,
                    width: 2
                  ),

                ),
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.transparent,
                ),
              )],
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Spacer(flex: 20,),
          Center(
            child: Text(
              "tolubragado@gmail.com",
              style: TextStyle(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                shadows: [Shadow(
                  color: Colors.grey.shade700,
                  blurRadius: 2,

                )]
              ),
            ),
          ),
          Gap((AppLayout.getHeight(20))),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Styles.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  spreadRadius: 2
                )]
              ),
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.person, size: 38,),
                  Gap((AppLayout.getWidth(15))),
                  Text("Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),
          ),
          Gap((AppLayout.getHeight(20))),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color: Styles.secondaryColor,
                  boxShadow: [BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2
                  )]
              ),
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart, size: 38,),
                  Gap((AppLayout.getWidth(15))),
                  Text("My Orders",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                    ),)
                ],
              ),
            ),
          ),
          Gap((AppLayout.getHeight(20))),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Styles.secondaryColor,
                  boxShadow: [BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2
                  )]
              ),
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip, size: 38,),
                  Gap((AppLayout.getWidth(15))),
                  Text("Privacy Policy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                    ),)
                ],
              ),
            ),
          ),
          Gap((AppLayout.getHeight(20))),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Styles.secondaryColor,
                  boxShadow: [BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2
                  )]
              ),
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.settings, size: 38,),
                  Gap((AppLayout.getWidth(15))),
                  Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                    ),)
                ],
              ),
            ),
          ),
          Gap((AppLayout.getHeight(20))),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Styles.secondaryColor,
                  boxShadow: [BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2
                  )]
              ),
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.help, size: 38,),
                  Gap((AppLayout.getWidth(15))),
                  Text("Help",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                    ),)
                ],
              ),
            ),
          ),
          Gap((AppLayout.getHeight(20))),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Styles.secondaryColor,
                    boxShadow: [BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        spreadRadius: 2
                    )]
                ),
                height: 50,
                width: size.width*0.50,
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.logout, size: 25,),
                      Gap((AppLayout.getWidth(15))),
                      Text("Sign out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
