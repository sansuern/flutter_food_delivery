import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/popular_product_controller.dart';
import 'package:flutter_application_1/controllers/recommended_product_controller.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_column.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_1/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return popularProducts.isloaded
              ? Container(
                  // color: Colors.red,
                  height: 320,
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: popularProducts.popularProductList.length,
                      itemBuilder: (context, position) {
                        return _buildPageItem(position,
                            popularProducts.popularProductList[position]);
                      }),
                )
              : CircularProgressIndicator(
                  color: AppColors.mainColor,
                );
        }),
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return DotsIndicator(
            dotsCount: popularProducts.popularProductList.isEmpty
                ? 1
                : popularProducts.popularProductList.length,
            position: _currPageValue.floor(),
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),
        SizedBox(
          height: Dimentions.getHeight(30),
        ),
        Container(
          margin: EdgeInsets.only(
            left: Dimentions.getWidth(30),
          ),
          child: Row(
            children: [
              BigText(text: "Recommended"),
              SizedBox(
                width: Dimentions.getWidth(10),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimentions.getWidth(10),
              ),
              Container(
                child: SmallText(
                  text: "Food pairing",
                ),
              ),
            ],
          ),
        ),
        GetBuilder<RecommendedProductController>(
          builder: (recommendedProduct) {
            return recommendedProduct.isloaded
                ? ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: recommendedProduct.recommendedProductList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: Dimentions.getWidth(20),
                            right: Dimentions.getWidth(20),
                            bottom: Dimentions.getHeight(10)),
                        child: Row(
                          children: [
                            //* image section
                            Container(
                              width: Dimentions.getWidth(120),
                              height: Dimentions.getHeight(110),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimentions.getHeight(15)),
                                color: Colors.white38,
                                image: DecorationImage(
                                  image: AssetImage("assets/image/food0.png"),
                                ),
                              ),
                            ),

                            //* text section
                            Expanded(
                              child: Container(
                                height: Dimentions.getHeight(100),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        Dimentions.getHeight(20)),
                                    bottomRight: Radius.circular(
                                        Dimentions.getHeight(20)),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: Dimentions.getWidth(10),
                                    right: Dimentions.getWidth(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BigText(
                                          text: recommendedProduct
                                              .recommendedProductList[index]
                                              .name!),
                                      SizedBox(height: Dimentions.getHeight(5)),
                                      SmallText(
                                          text: recommendedProduct
                                              .recommendedProductList[index]
                                              .description!),
                                      SizedBox(
                                          height: Dimentions.getHeight(10)),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconAndTextWidget(
                                            text: "Normal",
                                            icon: Icons.circle,
                                            iconColor: AppColors.iconColor1,
                                          ),
                                          IconAndTextWidget(
                                            text: "1.7km",
                                            icon: Icons.location_on,
                                            iconColor: AppColors.mainColor,
                                          ),
                                          IconAndTextWidget(
                                            text: "32min",
                                            icon: Icons.access_time_rounded,
                                            iconColor: AppColors.iconColor2,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                : const CircularProgressIndicator(
                    color: AppColors.mainColor,
                  );
          },
        )
      ],
    );
  }

  Widget _buildPageItem(int index, popularProduct) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currPageValue.floor()) {
      //* (1 - ([0-9] - [0-9]) = 1 * (1 - 0.8) = 0.2) : 1 * 0.2 = 1.0?
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);

      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimentions.getHeight(220),
            margin: EdgeInsets.only(
                left: Dimentions.getWidth(20), right: Dimentions.getWidth(10)),
            decoration: BoxDecoration(
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              borderRadius: BorderRadius.circular(Dimentions.getHeight(30)),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/food0.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(
                  left: Dimentions.getWidth(30),
                  right: Dimentions.getWidth(30),
                  bottom: Dimentions.getWidth(20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimentions.getHeight(20)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                ],
              ),
              child: Container(
                  padding: EdgeInsets.only(
                      top: Dimentions.getHeight(15),
                      left: Dimentions.getWidth(15),
                      right: Dimentions.getWidth(15)),
                  child: AppColumn(
                    text: popularProduct.name!,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
