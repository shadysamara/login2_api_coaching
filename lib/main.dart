import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login2_api_coaching/helpers/settings.dart';
import 'package:login2_api_coaching/helpers/spHelper.dart';
import 'package:login2_api_coaching/ui/auth/api/auth_api.dart';
import 'package:login2_api_coaching/ui/auth/models/login_response.dart';
import 'package:login2_api_coaching/ui/auth/models/signup_model.dart';
import 'package:login2_api_coaching/ui/auth/models/signup_response.dart';
import 'package:login2_api_coaching/ui/favourite/api/favourite_api.dart';
import 'package:login2_api_coaching/ui/favourite/models/favourite_response.dart';
import 'package:login2_api_coaching/ui/home/api/home_api.dart';
import 'package:login2_api_coaching/ui/home/models/home_response.dart';
import 'package:login2_api_coaching/ui/home/models/product_details_response.dart';
import 'package:login2_api_coaching/ui/home/models/products_response.dart';
import 'package:login2_api_coaching/ui/profile/api/profile_api.dart';
import 'package:login2_api_coaching/ui/profile/models/profile_response.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.spHelper.initSp();
  await Settings.settings.initDio();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: RaisedButton(onPressed: () async {
        // AuthApi.authApi.login('shady.samara@hotmail.com', '12345336');
        // SpHelper.spHelper.clearToken();
        // ProfileResponse profileResponse =
        //     await ProfileApi.profileApi.getProfile();
        // HomeResponse homeResponse = await HomeApi.homeApi.getHome();
        // ProductsResponse productsResponse =
        //     await HomeApi.homeApi.getProducts(4);
        // ProductDetailsResponse productsResponse =
        //     await HomeApi.homeApi.getProductDetails(57);
        await FavoutiteApi.favoutiteApi.toggleFavourite(57);
        FavouritesResponse favouritesResponse =
            await FavoutiteApi.favoutiteApi.getFavourites();
        print(favouritesResponse.toJson());
      })),
    );
  }
}
