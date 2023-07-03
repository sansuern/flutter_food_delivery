import 'package:flutter/material.dart';
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
              preferredSize: Size.fromHeight(60),
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
    );
  }
}
