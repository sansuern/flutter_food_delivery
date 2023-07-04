import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimentions.getHeight(30)),
                    topRight: Radius.circular(Dimentions.getHeight(30)),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                    child: BigText(
                  text: "Chinese Side",
                  size: Dimentions.getHeight(26),
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimentions.getWidth(20),
                      right: Dimentions.getWidth(20)),
                  child: ExpandableTextWidget(
                      text:
                          "This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app.This e-commerce app is based on flutter Getx Package. We used Getx package to manage the state and routing of the app. We have also used Getx for api client.Getx is a great package for managing your app states, routes and http client. It does more than that. If you are trying to build a complex mobile or web app using flutter, Getx would be your best choice. And it's also beginners friendly reactive state management app package.We used Getx for products display, maintaining the state of the shopping cart, profile page, google map and many other features of this e-commerce app or shopping app."),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimentions.getWidth(50),
              right: Dimentions.getWidth(50),
              top: Dimentions.getHeight(10),
              bottom: Dimentions.getHeight(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimentions.getHeight(24),
                ),
                BigText(
                  text: "\$12.88" + " X " + "3",
                  color: AppColors.mainBlackColor,
                  size: Dimentions.getHeight(26),
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimentions.getHeight(24),
                ),
              ],
            ),
          ),
          Container(
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
                      borderRadius:
                          BorderRadius.circular(Dimentions.getHeight(20)),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
                      borderRadius:
                          BorderRadius.circular(Dimentions.getHeight(20)),
                      color: AppColors.mainColor),
                  child: BigText(
                    text: "\$28 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
