import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_column.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';
import 'package:flutter_application_1/widgets/expandable_text_widget.dart';

import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //*backround image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimentions.getHeight(350),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/food0.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          //*icon widgets
          Positioned(
            top: Dimentions.getHeight(50),
            left: Dimentions.getWidth(20),
            right: Dimentions.getWidth(20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          //*inroduction of food
          Positioned(
            left: 0,
            right: 0,
            top: Dimentions.getHeight(350) - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimentions.getWidth(20),
                right: Dimentions.getWidth(20),
                top: Dimentions.getHeight(20),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimentions.getHeight(20)),
                    topRight: Radius.circular(Dimentions.getHeight(20)),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimentions.getHeight(20),
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimentions.getHeight(20),
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app."),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //* expanded
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimentions.getHeight(110),
        padding: EdgeInsets.only(
            top: Dimentions.getHeight(20),
            bottom: Dimentions.getHeight(20),
            left: Dimentions.getWidth(20),
            right: Dimentions.getWidth(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimentions.getHeight(40)),
              topRight: Radius.circular(Dimentions.getHeight(40))),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimentions.getHeight(15),
                bottom: Dimentions.getHeight(15),
                left: Dimentions.getWidth(15),
                right: Dimentions.getWidth(15),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.getHeight(20)),
                  color: Colors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimentions.getWidth(5),
                  ),
                  BigText(
                    text: "0",
                  ),
                  SizedBox(
                    width: Dimentions.getWidth(5),
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimentions.getHeight(15),
                bottom: Dimentions.getHeight(15),
                left: Dimentions.getWidth(15),
                right: Dimentions.getWidth(15),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.getHeight(20)),
                  color: AppColors.mainColor),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
