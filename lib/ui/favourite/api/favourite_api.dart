import 'package:dio/dio.dart';
import 'package:login2_api_coaching/helpers/settings.dart';
import 'package:login2_api_coaching/ui/favourite/models/favourite_response.dart';

class FavoutiteApi {
  FavoutiteApi._();
  static FavoutiteApi favoutiteApi = FavoutiteApi._();
  Future<bool> toggleFavourite(int productId) async {
    Response response = await Settings.settings.dio
        .post('add_or_remove_product_from_favourite/$productId');
    return response.data['success'];
  }

  Future<FavouritesResponse> getFavourites() async {
    Response response = await Settings.settings.dio.get('getFavourites');
    FavouritesResponse favouritesResponse =
        FavouritesResponse.fromJson(response.data);
    return favouritesResponse;
  }
}
