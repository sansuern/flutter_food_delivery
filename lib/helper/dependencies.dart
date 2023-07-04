import 'package:dio/dio.dart';
import 'package:flutter_application_1/configs/config.dart';
import 'package:flutter_application_1/controllers/popular_product_controller.dart';
import 'package:flutter_application_1/services/api/api_client.dart';
import 'package:flutter_application_1/services/repository/recommended_product_repo.dart';
import 'package:get/get.dart';

import '../controllers/recommended_product_controller.dart';
import '../services/repository/popular_product_repo.dart';

Future<void> init() async {
  final dio = Dio();

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: Config.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
}
