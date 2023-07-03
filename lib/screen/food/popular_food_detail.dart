import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          Positioned(
            left: 0,
            right: 0,
            top: Dimentions.getHeight(350),
            child: Container(
              padding: EdgeInsets.only(
                left: Dimentions.getWidth(20),
                right: Dimentions.getWidth(20),
                top: Dimentions.getHeight(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
