import 'package:dio/dio.dart';
import 'package:login2_api_coaching/helpers/settings.dart';
import 'package:login2_api_coaching/ui/home/models/home_response.dart';
import 'package:login2_api_coaching/ui/home/models/product_details_response.dart';
import 'package:login2_api_coaching/ui/home/models/products_response.dart';

class HomeApi {
  HomeApi._();
  static HomeApi homeApi = HomeApi._();
  Future<HomeResponse> getHome() async {
    try {
      Response response = await Settings.settings.dio.get('home');

      if (response.statusCode < 400) {
        HomeResponse homeResponse = HomeResponse.fromJson(response.data);

        return homeResponse;
      } else {
        print(response.data);
      }
    } on Exception catch (e) {
      return null;
    }
  }

  Future<ProductsResponse> getProducts(int catId) async {
    Response response = await Settings.settings.dio
        .get('getProduct', queryParameters: {'category_id': catId});
    ProductsResponse productsResponse =
        ProductsResponse.fromJson(response.data);
    return productsResponse;
  }

  Future<ProductDetailsResponse> getProductDetails(int productId) async {
    Response response =
        await Settings.settings.dio.get('getProductInfo/$productId');
    ProductDetailsResponse productDetailsResponse =
        ProductDetailsResponse.fromJson(response.data);
    return productDetailsResponse;
  }
}
