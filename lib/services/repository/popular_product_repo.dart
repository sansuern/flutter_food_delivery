import 'package:flutter_application_1/configs/config.dart';
import 'package:flutter_application_1/services/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(Config.POPULAR_PRODUCT_URL);
  }
}
