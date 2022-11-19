import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meaties_app/Screens/bottom_bar.dart';
import 'package:meaties_app/Screens/home_screen.dart';
import 'package:meaties_app/Utils/app_layout.dart';
import 'package:meaties_app/Utils/app_styles.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [           
            Gap(AppLayout.getHeight(500)),
            Container(

            ),
            Center
             (child: InkWell(
              onTap: (){
                print("getting started");
                BottomBar();
              },
              child: Text("Getting Started", style: Styles.headLine1,),
            ))
          ],
        ));
  }
}
