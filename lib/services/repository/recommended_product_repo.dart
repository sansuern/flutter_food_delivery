import 'package:flutter_application_1/configs/config.dart';
import 'package:flutter_application_1/services/api/api_client.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(Config.RECOMMENED_PRODUCT_URL);
  }
}
